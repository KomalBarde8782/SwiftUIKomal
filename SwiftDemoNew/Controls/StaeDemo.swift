//
//  StaeDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=YzAG7gpcIgs&list=PLb5R4QC2DtFuRFJ35uPMhpY90s0VMNR-i&index=3
struct StaeDemo: View {
    @State var isPlaying : Bool = true
    var body: some View {
        VStack{
            Image(systemName: "music.note").resizable().frame(width: 300,height: 300).background(.gray).cornerRadius(10)
            Text(isPlaying ?"Not Playing" :"Playing").font(.title).frame(maxWidth: 350,alignment: .leading).padding(30)
            HStack(alignment: .center, spacing: 70){
                Button {
                    debugPrint("Backward button tapped")
                } label: {
                    Image(systemName: "backward").resizable().frame(width: 60,height: 60).foregroundColor(.blue)
                }
                
                Button {
                    debugPrint("paly button tapped")
                    isPlaying.toggle()
                    
                } label: {
                    Image(systemName: isPlaying ? "play" : "pause").resizable().frame(width: 60,height: 60).foregroundColor(.blue)
                }
                Button {
                    debugPrint("forward button tapped")
                } label: {
                    Image(systemName: "forward").resizable().frame(width: 60,height: 60).foregroundColor(.blue)
                }

            }
        }
    }
}

struct StaeDemo_Previews: PreviewProvider {
    static var previews: some View {
        StaeDemo()
    }
}
