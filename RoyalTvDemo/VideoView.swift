//
//  VideoView.swift
//  VideoFinder
//
//  Created by Stephanie Diep on 2022-01-18.
//

import SwiftUI
import AVKit

struct VideoView: View {
    @Environment(\.dismiss) var dismiss
 
    @State private var videoPlayer: AVPlayer?
 
    let videoURL: String = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
 
    var body: some View {
        VStack {
            VideoPlayer(player: videoPlayer)
                .overlay(alignment: .topLeading) {
                    Button(action: {
                        videoPlayer?.pause()
                        videoPlayer = nil
                        dismiss()
                         
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
 
                    }
                    .frame(width: 21)
                    .padding(.top, 23)
                    .padding(.leading, 45)
                }
        }
        .navigationBarHidden(true)
        .onAppear {
            if let url = URL(string: videoURL) {
                self.videoPlayer = .init(url: url)
 
                videoPlayer?.play()
            }
        }
    }
}
