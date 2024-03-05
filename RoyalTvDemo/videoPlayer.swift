//
//  videoPlayer.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 13/09/23.
//

import SwiftUI
import AVKit
struct videoPlayer: View {
    var videoURL : String
    @State private var player : AVPlayer?
    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                // Start the player going, otherwise controls don't appear
                guard let url = URL(string: videoURL) else {
                    return
                }
                let player = AVPlayer(url: url)
                self.player = player
                player.play()
            }
            .onDisappear() {
                // Stop the player when the view disappears
                player?.pause()
            }
    }
}


struct videoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        videoPlayer(videoURL: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4")
    }
}
