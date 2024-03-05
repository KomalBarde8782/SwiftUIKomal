//
//  VideoCardView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 05/09/23.
//

import SwiftUI

struct VideoCardView: View {
    var categoryVideos : [Videos]
    let model: VideoCategoryItem?
    var categoryTitleArray =
      [
        Product(catString: "Icons of the seas"),
        Product(catString:"Kids teens and family"),
        Product(catString: "Celebrity beyond ship"),
        Product(catString :"Icons of the seas"),
        Product(catString:"Icons of the seas")]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(categoryTitleArray) { titles in
                    ZStack(alignment: .top){
                        RoundedRectangle(cornerRadius: 8).frame(width: 250,height: 200).foregroundColor(.black).opacity(0.3)
                        VStack(alignment: .leading){
                            Image("Video Thumbnail").resizable()
                                .frame(width: 250, height: 150).shimmer(viewModel: model!.refreshShimmerViewModel)
                            Text(titles.catString).padding(5).modifier(CategoryTitleCustomModifier(size: 14))
                                .shimmer(viewModel: model!.refreshShimmerViewModel)
                        }
                        
                        
                    }
                }
            }
        }.scrollIndicators(.hidden)
    }
}

struct VideoCardView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCardView(categoryVideos: [Videos(name: "ElephantsDream.mp4", thumbnail: "ElephantsDream.mp4", title: "ElephantsDream.mp4"),Videos(name: "ElephantsDream.mp4", thumbnail: "ElephantsDream.mp4", title: "ElephantsDream.mp4")], model: VideoCategoryItem(title: "MAKING AN ICON", image: nil, video: nil))
    }
}


struct CategoryTitleCustomModifier : ViewModifier{
    var size : CGFloat
    func body(content : Content) -> some View {
        content.foregroundColor(.white).font(.custom("Proxima Nova", size: size))
    }
}
