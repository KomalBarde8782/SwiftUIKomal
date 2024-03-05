//
//  VideoPlayerView.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 19/09/23.
//

import AVKit
import SwiftUI

/// VideoPlayerView
///
/// This view is used to show the  current Video Asset using `AVPlayer`
struct VideoPlayerView: View {
    @Environment(\.dismiss) var dismiss
    
    /// Current player instance
    @State var player: AVPlayer = .init()
    @State private var orientation = UIDeviceOrientation.portrait
    @EnvironmentObject var dataModel: VideosDataModel
    
    private var onFailure: (() -> Void)?
    
    
    
    var body: some View {
        VideosPlayer(player: player,
                     orientation: orientation)
            .ignoresSafeArea()
            .accessibilityIdentifier("videosVideoPlayer")
            .navigationBarHidden(true)
            .onAppear {
//                guard let url = item.video,
//                        !url.absoluteString.isEmpty else {
//                    onFailure?()
//                    return
//                }
                
                self.player = .init(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!)
                dataModel.trackVideoPlayerActions(player: player, brand: "rcl")
                
                Task {
                    guard let isPlayable = try? await player.currentItem?.asset.load(.isPlayable),
                          isPlayable else {
                        onFailure?()
                        return
                    }
                    
                    player.play()
                }
            }
//            .onRotate { orientation in
//                withAnimation {
//                    self.orientation = orientation
//                }
//            }
            .onDisappear {
                self.dataModel.trackVideoPlayerActions(player: player, brand: "rcl")
            }
            .onReceive(dataModel.viewDismissalModePublisher) { _ in
                self.dataModel.trackVideoPlayerActions(player: player, brand: "rcl")
                
            }
//            .onReceive(player) {
//                self.dataModel.trackVideoPlayerActions(player: player, brand: configuration.brandCode)
//            }
//            .onReceive(player.publisher(for: \.timeControlStatus)) { _ in
//                if player.timeControlStatus.rawValue == 2,
//                   Double(CMTimeGetSeconds(player.currentTime())) == 0 {
//                    self.dataModel.trackVideoActionsClicked(trackAction: "main:videoStart",
//                                                            brandCode: configuration.brandCode,
//                                                            category: item.category ?? "",
//                                                            videoTitle: item.title,
//                                                            interactionType: "process:mediatap:Start")
//                }
//            }
//            .onReceive(NotificationCenter.default.publisher(for: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)) { _ in
//                self.dataModel.trackVideoActionsClicked(trackAction: "main:videoComplete",
//                                                        brandCode: configuration.brandCode,
//                                                        category: item.category ?? "",
//                                                        videoTitle: item.title,
//                                                        interactionType: "process:mediaevent:complete")
//
//            }
//            .onReceive(NotificationCenter.default.publisher(for: AVPlayer.rateDidChangeNotification, object: player)) { _ in
//                if player.rate == 0 {
//                    self.dataModel.trackVideoActionsClicked(trackAction: "main:videoPause",
//                                                            brandCode: configuration.brandCode,
//                                                            category: item.category ?? "",
//                                                            videoTitle: item.title,
//                                                            interactionType: "interaction:mediatap:pause")
//                }
//            }
    }
    
    /// Sets a completion handler for `VideoPlayerView` in case of failure
    /// - Parameters:
    ///     - handler: Closure executed when video player URL is broken or empty
    /// - Returns: `VideoPlayerView`
    func onFailure(_ handler: @escaping () -> Void) -> Self {
        var view = self
        view.onFailure = handler
        return view
    }
}

#if DEBUG
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
#endif
