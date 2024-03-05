////
////  SubtitlesDemo.swift
////  SwiftDemoNew
////
////  Created by Komal Barde on 11/10/23.
////
//
import SwiftUI
//
//struct SubtitlesDemo: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct SubtitlesDemo_Previews: PreviewProvider {
//    static var previews: some View {
//        SubtitlesDemo()
//    }
//}


import AVKit

struct SubtitlesDemo: View {
  @State var player = AVPlayer(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!)
  @State var isPlaying: Bool = false
  @State var subtitleText: String = "Once upon a time, there was a programming book known as iOS Games..."
    
    let subtitleRemoteUrl = URL(string: "https://raw.githubusercontent.com/furkanhatipoglu/AVPlayerViewController-Subtitles/master/Example/AVPlayerViewController-Subtitles/trailer_720p.srt")
    @EnvironmentObject var dataModel: VideosDataModel
   
  var body: some View {
    VStack {
      ZStack {
        VideoPlayer(player: player) {
          VStack {
            Spacer()
              SubtitleViewFileDemo().onAppear {
                  dataModel.open(player: player, fileFromRemote: subtitleRemoteUrl!)
              }
//            Text(subtitleText)
//              .font(.caption)
//              .foregroundColor(.white)
//              .padding()
//              .background(Color.black.opacity(0.7))
//              .cornerRadius(10)
          }
        }
        
        .frame(width: 320, height: 180, alignment: .center)
        .onAppear {
          self.isPlaying = true
          player.play()
        }
      
      }
      Button {
        isPlaying ? player.pause() : player.play()
        isPlaying.toggle()
        
        player.seek(to: .zero)
      } label: {
        Image(systemName: isPlaying ? "stop" : "play")
          .padding()
      }
    }
  }
}


struct SubtitlesDemo_Previews: PreviewProvider {
    static var previews: some View {
        SubtitlesDemo()
    }
}





