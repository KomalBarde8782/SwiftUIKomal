////
////  VideosView.swift
////  TV
////
////  Created by Rodrigo Alejandro Velazquez Alcantara on 05/09/23.
//
//import SwiftUI
//
//
///// VideosView
/////
///// Home Screen for Videos feature which displays a catalog of different reproduceable content
//@MainActor
//public struct HomeVideosView: View {
//    let royalModelData = BundleDecoderRoyal.decodeLandmarkBundleJson()
//    @Environment(\.dismiss) var dismiss
//    var isLoading : Bool = false
//    @StateObject private var dataModel = VideosDataModel()
//
//    var model: HomeVideoCategoryItem
//
//        init(model: HomeVideoCategoryItem) {
//            self.model = model
//        }
//
//
//
//    @State private var hasTimeElapsed = false
//    public var body: some View {
//////            GeometryReader { geometry in
//////                ZStack(alignment: .leading) {
//////                    Image("Background")
//////                    .resizable()
//////                    .aspectRatio(geometry.size, contentMode: .fill)
//////                    .edgesIgnoringSafeArea(.all)
//////                    .accessibilityIdentifier("videosBackgroundImageView")
////                    ScrollView {
////                        VStack(alignment: .center, spacing: 0) {
////                                FeaturedVideoView(featuredVideo: FeaturedVideo(title: "Making An Icon EP01 an Iconic Vacation", videoUrl: "", assetUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/VolkswagenGTIReview.jpg"))
////
////                            ZStack {
////                                GeometryReader { proxy in
////                                    Image("Background")
////                                        .resizable()
////                                        .scaledToFill()
////                                        .frame(width: proxy.size.width)
////                                        .frame(maxHeight: .infinity)
////                                        .accessibilityIdentifier("videosBackgroundImageView")
////                                }
////                                VStack(alignment: .center, spacing: 0) {
////                                    ForEach (royalModelData.categories ?? []) { category in
////                                        Text(category.name ?? "")
////                                            .modifier(CategoryTitleCustomModifier(size: 18)).padding(10).shimmer(viewModel: model.refreshShimmerViewModel)
////                                        VideoCardView(categoryVideos: category.videos ?? [], model: model)
////
////                                    }
////                                    VStack (alignment: .center) {
////                                        Image("logos")
////                                        Image("logos").padding(.top, 20)
////                                    }
////                                    .accessibilityIdentifier("videosFooter")
////                                    .padding(.top, 16)
////                                }
////                                .padding(.top, 10)
////                            }
////
////
////
////
////                        }
////                    }
//        ZStack {
//            GeometryReader { proxy in
////                Image("Background")
////                    .resizable()
////                    .aspectRatio(proxy.size, contentMode: .fill)
////                    .edgesIgnoringSafeArea(.all)
////                    .accessibilityIdentifier("videosBackgroundImageView")
//            }
//            ScrollView(.vertical, showsIndicators: false) {
//                VStack(alignment: .center, spacing: 0) {
////                    FeaturedVideoView(featuredVideo: FeaturedVideo(title: "Making An Icon EP01 an Iconic Vacation", videoUrl: "", assetUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/VolkswagenGTIReview.jpg"))
//
//                    ForEach(dataModel.categories) { category in
//                        HomeVideoCategoryView(category: category)
//                            .padding(.vertical)
//                            .accessibilityIdentifier("videoCategory")
//                    }
//
//                }
//            }
//        }.onAppear {
//            Task {
//                await dataModel.videosViewDidAppear()
//            }
//        }
//
//    }
//
//
//}
//
//#if DEBUG
//struct HomeVideosView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeVideosView(model: HomeVideoCategoryItem(title: "MAKING AN ICON", image: nil, video: nil))
//    }
//}
//#endif
//
//
////https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/VolkswagenGTIReview.jpg
//
//
//
////                                FeaturedVideoView(featuredVideo: FeaturedVideo(title: "MAKING AN ICON", videoUrl: "", assetUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/VolkswagenGTIReview.jpg"), model: VideoCategoryItem(title: "MAKING AN ICON", image: nil, video: nil))
//


//
//  VideosView.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 05/09/23.

import SwiftUI


/// VideosView
///
/// Home Screen for Videos feature which displays a catalog of different reproduceable content
@MainActor
public struct HomeVideosView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var dataModel = VideosDataModel()
    
    var model: HomeVideoCategoryItem
        
        init(model: HomeVideoCategoryItem) {
            self.model = model
        }
    
    public var body: some View {
                VStack(alignment: .center, spacing: 0) {
                    ForEach(dataModel.categories) { category in
                        HomeVideoCategoryView(category: category)
                            .padding(.vertical)
                            .accessibilityIdentifier("videoCategory")
                    }
                }.onAppear {
                    Task {
                        await dataModel.videosViewDidAppear()
                    }
                }
            
        
            
    }
}

#if DEBUG
struct HomeVideosView_Previews: PreviewProvider {
    static var previews: some View {
        HomeVideosView(model: HomeVideoCategoryItem(title: "MAKING AN ICON", image: nil, video: nil))
    }
}
#endif



           
