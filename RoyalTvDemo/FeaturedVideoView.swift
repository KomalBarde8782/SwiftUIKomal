////
////  FeaturedVideoView.swift
////  TV
////
////  Created by Komal Barde on 08/09/23.
////
//
//import SwiftUI
//
//
/////FeaturedVideoView
/////
/////View for the Featured Video to play which shows a play icon on tap of which video gets played that accepts the FeaturedVideo which has asset url to show the back image and the video url that is used to play the video when tapped on play button and a tittle to show
//struct FeaturedVideoView: View {
//    var featuredVideo: FeaturedVideo
//    var isLoading : Bool = false
//    let model: VideoCategoryItem
//    var body: some View {
//        ZStack (alignment: .bottom) {
//                        AsyncImage(url: URL(string: featuredVideo.assetUrl),content : {image in
//                            ZStack(alignment: .bottom) {
//                                image.resizable()
//                                    .frame(width: UIScreen.main.bounds.width, height: 400)
//                                    .accessibilityIdentifier("videoFeaturingAsssetUrl")
//                                VStack {
//                                    Button(action: {
//                                        //video url will be used here to play the video
//                                        print("tappedd")
//                                    }) {
//                                        //if isButtonVisible{
//                                        Image("PlayOne")
//                                            .resizable()
//                                            .frame(width: 52, height: 52)
//                                            .accessibilityIdentifier("videoPlayImageView")
//                                            .shimmer(viewModel: model.refreshShimmerViewModel)
//                                        // }
//                                    }
//
//                                    .clipShape(Circle())
//
//                                    Text(featuredVideo.title)
//                                        .font(.system(size: 40))
//                                        .foregroundColor(.white)
//                                        .lineLimit(2)
//                                        .fixedSize(horizontal: false, vertical: true)
//                                        .dynamicTypeSize(...DynamicTypeSize.xLarge)
//                                        .frame(width: 200, height: .infinity)
//                                        .multilineTextAlignment(.center)
//                                        .accessibilityIdentifier("videoPlayTitle")
//                                        //kom
//                                        .textInputAutocapitalization(.never)
//                                        .shimmer(viewModel: model.refreshShimmerViewModel)
//                                }
//                                .padding(.bottom, 50)
//                            }
//
//                        },
//                        placeholder:{
//                            ZStack(alignment: .bottom){
//                                Image("placeholder")
//                                    .resizable()
//                                    .frame(width: UIScreen.main.bounds.width, height: 400)
//                                    .accessibilityIdentifier("videoFeaturingPlaceholderImage")
//                                    .onTapGesture {
//                                        print("tappped placeholder")
//                                    }
//                                VStack {
//                                    Text(featuredVideo.title)
//                                        .font(.system(size: 40))
//                                        .foregroundColor(.white)
//                                        .lineLimit(2)
//                                        .fixedSize(horizontal: false, vertical: true)
//                                        .dynamicTypeSize(...DynamicTypeSize.xLarge)
//                                        .frame(width: 200, height: .infinity)
//                                        .multilineTextAlignment(.center)
//                                        .accessibilityIdentifier("videoPlayTitle")
//                                        .shimmer(viewModel: model.refreshShimmerViewModel)
//
//                                }
//
//                                .padding(.bottom, 50)
//                            }
//                        })
//
//
//                    }
//
////            AsyncImage(url: URL(string: featuredVideo.assetUrl), transaction: .init(animation: .easeInOut), content: { phase in
////                switch phase {
////                case let .success(image):
////                    ZStack(alignment: .bottom) {
////                        image.resizable()
////                            .frame(width: UIScreen.main.bounds.width, height: 400)
////                            .accessibilityIdentifier("videoFeaturingAsssetUrl")
////                        VStack {
////                            Button(action: {
////                                //video url will be used here to play the video
////                                print("tappedd")
////                            }) {
////                                //if isButtonVisible{
////                                Image("Play")
////                                    .resizable()
////                                    .frame(width: 52, height: 52)
////                                    .accessibilityIdentifier("videoPlayImageView")
////                                // }
////                            }
////
////                            Text(featuredVideo.title)
////                                .font(.system(size: 40))
////                                .foregroundColor(.white)
////                                .lineLimit(2)
////                                .fixedSize(horizontal: false, vertical: true)
////                                .dynamicTypeSize(...DynamicTypeSize.xLarge)
////                                .frame(width: 200, height: .infinity)
////                                .multilineTextAlignment(.center)
////                                .accessibilityIdentifier("videoPlayTitle")
////                        }
////                        .padding(.bottom, 50)
////                    }
////                case .failure:
////                    ZStack(alignment: .bottom){
////                        Image("placeholder")
////                            .resizable()
////                            .frame(width: UIScreen.main.bounds.width, height: 400)
////                            .accessibilityIdentifier("videoFeaturingPlaceholderImage")
////                            .onTapGesture {
////                                print("tappped placeholder")
////                            }
////                        VStack {
////                            Text(featuredVideo.title)
////                                .font(.system(size: 40))
////                                .foregroundColor(.white)
////                                .lineLimit(2)
////                                .fixedSize(horizontal: false, vertical: true)
////                                .dynamicTypeSize(...DynamicTypeSize.xLarge)
////                                .frame(width: 200, height: .infinity)
////                                .multilineTextAlignment(.center)
////                                .accessibilityIdentifier("videoPlayTitle")
////                        }.padding(.bottom, 50)
////                    }
////                default:
////                    ZStack(alignment: .bottom){
////                        Image("placeholder")
////                            .resizable()
////                            .frame(width: UIScreen.main.bounds.width, height: 400)
////                            .accessibilityIdentifier("videoFeaturingPlaceholderImage")
////                    }
////                }
////            })
//        }
//    }
//
////}
//
//
//#if DEBUG
//    struct FeaturedVideoView_Previews: PreviewProvider {
//        static var previews: some View {
//            FeaturedVideoView(featuredVideo: FeaturedVideo(title: "MAKING AN ICON", videoUrl: "", assetUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/VolkswagenGTIReview.jpg"), model: VideoCategoryItem(title: "MAKING AN ICON", image: nil, video: nil))
//        }
//    }
//#endif
//
//
//
//    //https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/VolkswagenGTIReview.jpg
//

//
//  FeaturedVideoView.swift
//  TV
//
//  Created by Komal Barde on 08/09/23.

import SwiftUI

///FeaturedVideoView
///View for the Featured Video section that accepts the FeaturedVideo, which shows a play icon on tap of which video gets played , has asset url to show the back image and the video url that is used to play the video when tapped on play button and a tittle to show
struct FeaturedVideoView: View {
   // @EnvironmentObject var dataModel: VideosDataModel
    var featuredVideo: FeaturedVideo
    var body: some View {
        AsyncImage(url: URL(string: featuredVideo.assetUrl), content: { image in
            ZStack(alignment: .bottom) {
                GeometryReader { proxy in
                    image.resizable()
                        .scaledToFill()
                        .frame(width: proxy.size.width, height: 400)
                        .clipped()
                        .accessibilityIdentifier("videoFeaturingAsssetUrl")
                }
                VStack(spacing: 0) {
                    Image("PlayOne")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 52, height: 52)
                        .accessibilityIdentifier("videoPlayImageView")
                        .padding(.top, 177)
                    Text(featuredVideo.title.localizedUppercase)
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                       // .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .dynamicTypeSize(...DynamicTypeSize.xLarge)
                        .multilineTextAlignment(.center)
                        .accessibilityIdentifier("videoPlayTitle")
                        //.padding(.horizontal, 55)
                        .padding(.top, 10)
                    Spacer(minLength: 40)
                }.background(.clear)
                .frame(height: 400)
            }
        },
        placeholder: {
            ZStack(alignment: .bottom) {
                GeometryReader { proxy in
                    Image("placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(width: proxy.size.width,
                               height: 400)
                        .clipped()
                        .accessibilityIdentifier("videoFeaturingPlaceholderImageView")
//                    Rectangle()
//                        .foregroundColor(Color.black)
//                        .frame(width: proxy.size.width, height: 400)
//                       // .shimmer(viewModel: dataModel.shimmerViewModel)
//                        .accessibilityIdentifier("videoFeaturingPlaceholderView")
//                        //.hidden(isHidden: $dataModel.isLoading.not)
                }
                VStack{
                    Text(featuredVideo.title.localizedUppercase) //featuredVideo.title.localizedUppercase
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        //.lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .dynamicTypeSize(...DynamicTypeSize.xLarge)
                        .multilineTextAlignment(.center)
                        .accessibilityIdentifier("videoPlayTitle")
                        //.padding(.horizontal, 55)
                        .padding(.bottom, 56)
                    Spacer()
                }
              
                .background(.clear)
             .frame(height: 100)
                //.hidden(isHidden: $dataModel.isLoading)
                VStack(spacing: 16) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 60, height: 60)
                        //.shimmer(viewModel: dataModel.shimmerViewModel)
                        .cornerRadius(100)
                        .padding(.bottom, 40)
                        .accessibilityIdentifier("videoFeaturingPlaceholderView")
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 219, height: 27)
                        //.shimmer(viewModel: dataModel.shimmerViewModel)
                        .cornerRadius(5)
                        .accessibilityIdentifier("videoFeaturingPlaceholderView")
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 155, height: 27)
                        //.shimmer(viewModel: dataModel.shimmerViewModel)
                        .cornerRadius(5)
                        .accessibilityIdentifier("videoFeaturingPlaceholderView")
                    Spacer(minLength: 40)
                }
                .frame(height: 220)
                //.hidden(isHidden: $dataModel.isLoading.not)
            }
            .frame(height: 400)
        })
        .onTapGesture {
           // self.dataModel.selectedVideo = dataModel.featured
        }
    }
}

#if DEBUG
struct FeaturedVideoView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedVideoView(featuredVideo: FeaturedVideo(title: "Making An Icon EP01 an Iconic Vacation", videoUrl: "", assetUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/VolkswagenGTIReview.jpg"))
            //.environmentObject(VideosDataModel())
    }
}
#endif
