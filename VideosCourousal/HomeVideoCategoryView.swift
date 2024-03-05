////
////  VideoCategoryView.swift
////  SwiftDemoNew
////
////  Created by Komal Barde on 26/10/23.
////
//
//import SwiftUI
//
//struct HomeVideoCategoryView: View {
//    let category: HomeVideoCategory
//    var body: some View {
//        VStack(alignment: .leading, spacing: 10) {
//            HStack{
//                Text("Videos")
//                    .foregroundColor(.black)
//                    .font(.system(size: 25))
//                    .dynamicTypeSize(...DynamicTypeSize.large)
//                Spacer()
//                Button(action: {
//                    print("Tapped")
//                }) {
//                    HStack(alignment: .center, spacing: 5.0) {
//                        Text("View All")
//                        Image("Caret")
//                    }
//                }
//
//                .cornerRadius(5.0)
//
//
//
//            }.padding(.leading)
//                .padding(.trailing)
//
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack{
//                    LazyHStack(alignment: .center, spacing: 12) {
//                        ForEach(category.items) { item in
//                            HomeVideoCategoryItemView(item: item)
//                                .onTapGesture {
//
//                                }
//                                .accessibilityIdentifier("videoCategoryItem")
//
//                        }
//                        Image("Group 481935")
//                            .resizable()
//                            .frame(width: 230,
//                                   height: 200)
//
//
//                        AsyncImage(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg")) { image in
//                            //                                ZStack{
//                            //                                    image.resizable()
//                            //                                        .scaledToFill()
//                            //
//                            //                                        .frame(width: 230,
//                            //                                               height: 200)
//                            //                                        .clipped()
//                            //                                        .cornerRadius(10)
//                            //                                        .accessibilityIdentifier("videoFeaturingAsssetUrl")
//                            //
//                            //                                    Text("fgdfdgd").foregroundColor(.black)
//                            //                                }
//                            ZStack(alignment: .leading) {
//                                image.resizable()
//                                    .scaledToFill()
//                                    .frame(width: 230, height: 200)
//                                    .clipped()
//                                    .accessibilityIdentifier("videoFeaturingAsssetUrl")
//                                VStack(spacing: 0) {
//
//                                    Text("View all videos")
//                                        .font(.system(size: 18))
//                                        .fontWeight(.bold)
//                                        .foregroundColor(.white)
//                                        .lineLimit(2)
//                                        .fixedSize(horizontal: false, vertical: true)
//                                        .dynamicTypeSize(...DynamicTypeSize.xLarge)
//                                        .multilineTextAlignment(.center)
//                                        .accessibilityIdentifier("ViewAllVideosText")
//                                        //.padding(.horizontal, 10)
//                                        .padding(.top, 30)
//                                        .padding(.leading, 20)
//                                        .frame(width: 105, alignment: .topLeading)
//                                    Spacer(minLength: 40)
//                                }
//                                .frame(height: 200)
//                            }
//                        } placeholder: {
//
////                            Image("placeholder")
////                                .resizable()
////                                .scaledToFill()
////                                .frame(width: 230,
////                                       height: 200)
////                                .clipped()
////                                .cornerRadius(10)
////                                .accessibilityIdentifier("videoFeaturingPlaceholderImageView")
//
//                            ZStack(alignment: .leading) {
//                                Image("placeholder")
//                                    .resizable()
//                                    .scaledToFill()
//                                    .frame(width: 230, height: 200)
//                                    .clipped()
//                                    .cornerRadius(10)
//                                    .accessibilityIdentifier("videoFeaturingPlaceholderImageView")
//                                VStack(spacing: 0) {
//                                    Text("View all videos")
//                                        .font(.system(size: 18))
//                                        .fontWeight(.bold)
//                                        .foregroundColor(.white)
//                                        .lineLimit(2)
//                                        .fixedSize(horizontal: false, vertical: true)
//                                        .dynamicTypeSize(...DynamicTypeSize.xLarge)
//                                        .multilineTextAlignment(.center)
//                                        .accessibilityIdentifier("ViewAllVideosText")
//                                        .padding(.top, 30)
//                                        .padding(.leading, 20)
//                                        .frame(width: 105, alignment: .topLeading)
//                                    Spacer(minLength: 40)
//                                }
//                                .frame(height: 200)
//
//                            }
//                        }
//
//                    }
//
//                    .frame(height: 210)
//                    .padding(.horizontal, 24)
//                    .padding(.top, 16)
//                }
//
//            }
//
//        }
//        .background(.red)
//        .frame(height: 199)
//
//    }
//}
//
//struct HomeVideoCategoryView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeVideoCategoryView(category: HomeVideoCategory(title: "Our ships", items: [HomeVideoCategoryItem(title: "Icon of the Seas | Kids, Teens, & Family Adve...", image: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg"), video: nil),HomeVideoCategoryItem(title: "Elephant Dream", image: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg"), video: nil)]))
//    }
//}
//
//
////
////  LinkLabel.swift
////  Components
////
////  Created by Sunil Gupta on 25/08/23.
////
//
//import SwiftUI
//
///// Represents a link label which is tappable
//public struct LinkLabel: View {
//
//    /// Label title
//    let title: LocalizedStringKey
//
//    /// Handle tap action on label
//    @State var action: () -> Void
//
//    public init(title: LocalizedStringKey,
//                action: @escaping () -> Void) {
//        self.title = title
//        self.action = action
//    }
//
//    public var body: some View {
//        HStack(spacing: .zero) {
//            Text("View All")
//                .dynamicTypeSize(...DynamicTypeSize.small)
//                .accessibilityIdentifier("linkLabelText")
//
//            Image("Caret")
//                .renderingMode(.template)
//                .resizable()
//                .scaledToFit()
//                .foregroundColor(.blue)
//                .frame(width: 16, height: 16)
//                .accessibilityIdentifier("linkLabelImage")
//        }
//        .accessibilityElement(children: .combine)
//        .accessibilityAddTraits(.isButton)
//        .accessibilityLabel(title)
//        .accessibilityIdentifier("linkLabel")
//        .onTapGesture {
//            action()
//        }
//    }
//}
//
//#if DEBUG
//struct LinkLabel_Previews: PreviewProvider {
//    static var previews: some View {
//        LinkLabel(title: "Link Label") {
//        }
//    }
//}
//#endif


//
//  VideosCarouselView.swift
//  TV
//
//  Created by Komal Barde on 27/10/23.
//
import SwiftUI

/// VideosCarouselView
///
/// View used to display  VideosCarousel preview on home page
struct HomeVideoCategoryView: View {
    
    /// Category Information
    let category: HomeVideoCategory
    
   
    var body: some View {
        VStack(spacing: 10) {
                        HStack{
                            Text("Videos")
                                .foregroundColor(.black)
                                .font(.system(size: 25))
                                .dynamicTypeSize(...DynamicTypeSize.large)
                            Spacer()
                            Button(action: {
                                print("Tapped")
                            }) {
                                HStack(alignment: .center, spacing: 5.0) {
                                    Text("View All")
                                    Image("Caret")
                                }
                            }
            
                            .cornerRadius(5.0)
            
            
            
                        }
            .padding(.leading,22)
            .padding(.trailing)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .center, spacing: 12) {
                    ForEach(category.items) { item in
                        HomeVideoCategoryItemView(item: item)
                            .accessibilityIdentifier("videoCategoryItem")
                    }
                   
                    AsyncImage(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg")) { image in
                        ZStack(alignment: .leading) {
                            image.resizable()
                                .scaledToFill()
                                .frame(width: 200,
                                       height: 182)
                                .clipped()
                                .cornerRadius(10)
                                .accessibilityIdentifier("videoFeaturingAsssetUrl")
                    
                            VStack(spacing: 0) {
                                Text("VIEW_ALL_VIDEOS")
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .lineLimit(2)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .dynamicTypeSize(...DynamicTypeSize.xLarge)
                                    .multilineTextAlignment(.leading)
                                    .accessibilityIdentifier("ViewAllVideosText")
                                    .padding(.top, 30)
                                    .padding(.leading, 20)
                                    .frame(width: 105, alignment: .topLeading)
                                Spacer(minLength: 40)
                            }
                            .frame(height: 200)
                        }
                    } placeholder: {
                        ZStack(alignment: .leading) {
                            Image("placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200,
                                       height: 182)
                                .clipped()
                                .cornerRadius(10)
                                .accessibilityIdentifier("videoFeaturingPlaceholderImageView")
                            VStack(spacing: 0) {
                                Text("VIEW_ALL_VIDEOS")
                                    .font(.system(size: 18))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .lineLimit(2)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .dynamicTypeSize(...DynamicTypeSize.xLarge)
                                    .multilineTextAlignment(.leading)
                                    .accessibilityIdentifier("ViewAllVideosText")
                                    .padding(.top, 30)
                                    .padding(.leading, 20)
                                    .frame(width: 105, alignment: .topLeading)
                                Spacer(minLength: 40)
                            }
                            .frame(height: 200)
                            
                        }
                    }
                }
                .frame(height: 200)
                .padding(.horizontal, 24)
            }
        }
        .frame(height: 200)
    }
}

struct HomeVideoCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        HomeVideoCategoryView(category: HomeVideoCategory(title: "Our ships", items: [HomeVideoCategoryItem(title: "Icon of the Seas | Kids, Teens, & Family Adve...", image: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg"), video: nil),HomeVideoCategoryItem(title: "Elephant Dream", image: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg"), video: nil)]))
    }
}
