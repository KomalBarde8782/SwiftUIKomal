//
//  VideosDataModel.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 12/10/23.
//

import Foundation
import Combine
import SwiftUI
 import AVKit
final class VideosDataModel: ObservableObject {
    var viewDismissalModePublisher = PassthroughSubject<Bool, Never>()
    private var cancellables: [AnyCancellable?] = []
    //@Published var featured: VideoCategoryItem = .init(title: "MAKING AN ICON", image: nil, video: nil)
    @Published var categories: [HomeVideoCategory] = []
    
    
    private let services: HomeVideosServices
    
    init(services: HomeVideosServices = .init()) {
        self.services = services
    }
    

    private struct AssociatedKeys {
        static var FontKey = "FontKey"
        static var ColorKey = "FontKey"
        static var TextBackgroundColorKey = "TextBackgroundColorKey"
        static var SubtitleKey = "SubtitleKey"
        static var SubtitleHeightKey = "SubtitleHeightKey"
        static var PayloadKey = "PayloadKey"
    }
    
    @Published var subtitleText: String = ""
    
    fileprivate var parsedPayload: NSDictionary? {
        get { return objc_getAssociatedObject(self, &AssociatedKeys.PayloadKey) as? NSDictionary }
        set (value) { objc_setAssociatedObject(self, &AssociatedKeys.PayloadKey, value, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }
    
    func videosViewDidAppear() async {
       
        await fetchContent()
    }
    func trackVideoPlayerActions(player: AVPlayer, brand: String) {
        var timeControl: AnyCancellable?
        timeControl = player.publisher(for: \.timeControlStatus).sink {  [weak player] _ in
            if let videoPlayer = player, videoPlayer.timeControlStatus.rawValue == 2,
               Double(CMTimeGetSeconds(videoPlayer.currentTime())) == 0 {
                print("main:videoStart")
                timeControl?.cancel()
            }
        }
        
        cancellables.append(timeControl)
        
        var didEndTime: AnyCancellable?
        didEndTime = NotificationCenter.default.publisher(for: .AVPlayerItemDidPlayToEndTime, object: player.currentItem).sink { _ in
            print("main:videoComplete")
        }
        
        cancellables.append(didEndTime)
        
        var pause: AnyCancellable?
        pause = NotificationCenter.default.publisher(for: AVPlayer.rateDidChangeNotification, object: player).sink { [weak player] _ in
            if player?.rate == 0 {
                print("main:videoPause")
            }
        }
        
        cancellables.append(pause)
    }
    
    
    func open(player: AVPlayer, fileFromRemote filePath: URL, encoding: String.Encoding = .utf8) {
        self.subtitleText = "..."
        let dataTask = URLSession.shared.dataTask(with: filePath) { data, response, error in
            if let httpResponse = response as? HTTPURLResponse {
                let statusCode = httpResponse.statusCode
                
                //Check status code
                if statusCode != 200 {
                    NSLog("Subtitle Error: \(httpResponse.statusCode) - \(error?.localizedDescription ?? "")")
                    return
                }
            }
            
            // Update UI elements on main thread
            DispatchQueue.main.async {
                self.subtitleText = ""
                if let checkData = data as Data?, let contents = String(data: checkData, encoding: encoding) {
                    self.show(player: player, subtitles: contents)
                }
            }
        }
        dataTask.resume()
    }
    
    func show(player: AVPlayer, subtitles string: String) {
        // Parse
        parsedPayload = try? Subtitles.parseSubRip(string)
        if let parsedPayload = parsedPayload {
            addPeriodicNotification(player: player, parsedPayload: parsedPayload)
        }
    }
    
    func addPeriodicNotification(player: AVPlayer, parsedPayload: NSDictionary) {
        // Add periodic notifications
        let interval = CMTimeMake(value: 1, timescale: 60)
        player.addPeriodicTimeObserver(forInterval: interval, queue: .main) { [weak self] time  in
            self?.subtitleText = Subtitles.searchSubtitles(self?.parsedPayload, time.seconds) ?? "default"
        }
//        player?.addPeriodicTimeObserver(forInterval: interval, queue: .main) { [weak self] time in
//            guard let strongSelf = self, let label = strongSelf.subtitleLabel else {
//                return
//            }
//            self.subtitleText = Subtitles.searchSubtitles(self.parsedPayload, time.seconds)
//            // Search && show subtitles
////            if let textBackgroundColorKey = strongSelf.textBackgroundColorKey, let text = text {
////                label.attributedText = NSAttributedString(string: text, attributes: [.backgroundColor: textBackgroundColorKey, .foregroundColor: UIColor.white])
////            } else {
////                label.text = text
////            }
////
////            // Adjust size
////            let baseSize = CGSize(width: label.bounds.width, height: .greatestFiniteMagnitude)
////            let rect = label.sizeThatFits(baseSize)
////            if label.text != nil {
////                strongSelf.subtitleLabelHeightConstraint?.constant = rect.height + 5.0
////            } else {
////                strongSelf.subtitleLabelHeightConstraint?.constant = rect.height
////            }
//        }
    }
    
    
}


// MARK: - Services
extension VideosDataModel {
    /// Call service to fetch content
    func fetchContent() async {
        do {
            let content: ServiceResponse<HomeVideosContentResponse> = try await services.getContent()
            let payload = content.payload
            
            await MainActor.run { [weak self] in
                self?.categories = payload.categories.map(HomeVideoCategory.init(category:))
            }
        } catch { }
    }
}




import Foundation

/// Codable response from a service request that contains a status code and a payload that conforms to the Codable protocol as well. It is to be used with the Models defined by the client that consumes Services framework
public struct ServiceResponse<Model: Codable>: Codable {
    public var status: Int
    public var payload: Model
    
    public init(status: Int, payload: Model) {
        self.status = status
        self.payload = payload
    }
}
