//
//  FeaturedVideoAssetView.swift
//  TV
//
//  Created by Komal Barde on 11/09/23.
//

import SwiftUI


struct FeaturedVideoAssetView: View {
    var featuredVideo: FeaturedVideo
var isButtonVisible : Bool
    
    var body: some View {
        
            Button(action: {
                //video url will be used here to play the video
                print("tappedd")
            }) {
                if isButtonVisible{
                    Image(isButtonVisible ? "Play" : "")
                        .resizable()
                        .frame(width: 52, height: 52)
                        .accessibilityIdentifier("videoPlayImageView")
                }
            }
            
            Text(featuredVideo.title)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
                .dynamicTypeSize(...DynamicTypeSize.xLarge)
                .frame(width: 200, height: .infinity)
                .multilineTextAlignment(.center)
                .accessibilityIdentifier("videoPlayTitle")
    }
}

#if DEBUG
struct FeaturedVideoAssetView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedVideoAssetView(featuredVideo: FeaturedVideo(title: "MAKING AN ICON", videoUrl: "", assetUrl: ""), isButtonVisible: true)
    }
}
#endif
