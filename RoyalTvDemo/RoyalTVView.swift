//
//  RoyalTVView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 05/09/23.
//

import SwiftUI
///Video Thumbnail
struct RoyalTVView: View {
    let royalModelData = BundleDecoderRoyal.decodeLandmarkBundleJson()
    var body: some View {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Image("Background")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    ScrollView {
                        VStack(alignment: .leading){
                            RoyalOneHeaderView().padding(.leading,30)
                            ZStack(alignment: .bottom){
                                Image("tv_featured_vid_img").resizable()
                                    .frame(width: UIScreen.main.bounds.width,height: 400).padding(.top,10)
                                //Play
                                VStack{
                                    Image("Play").resizable().frame(width: 52,height: 52)
//                                    Text("MAKING AN ICONgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgf").foregroundColor(.white).padding(.top,40).font(.system(size: 40)).multilineTextAlignment(.center)
                                    
                                    
//                                    Text("MAKING AN ICON ").foregroundColor(.white).padding(.top,40).font(.system(size: 40)).multilineTextAlignment(.center).frame(width: 100, height: 100).lineLimit(2)
                                    
                                    //https://stackoverflow.com/questions/68294278/swiftui-text-scaledtofit-and-wrap-text
                                    Text("MAKING AN ICON")
                                        .frame(width: 200, height: .infinity)  // <--- here
                                               // .allowsTightening(true)
                                                .lineLimit(nil)
                                                //.scaledToFit()
                                                .minimumScaleFactor(0.7)
                                                .foregroundColor(.white).padding(.top,40)
                                                .font(.system(size: 40))
                                                .multilineTextAlignment(.center)
                                    
                                    
                                    
                                
                                    
                                    
                                
                                }.padding(.bottom,40)
                                
                            }
                            
                            ForEach (royalModelData.categories ?? []) { category in
                                Text(category.name ?? "").modifier(CategoryTitleCustomModifier(size: 18)).padding(10)
                                VideoCardView(categoryVideos: category.videos ?? [], model: nil)
                            }.padding(.leading,25)
                            
                            LabelledDividerView().padding(.top,15)
                            RoyalOneTvFooterView()
                        }.padding(.top,20)
                    }
                }
            }
        
          }
        
    }
//}

struct RoyalTVView_Previews: PreviewProvider {
    static var previews: some View {
        RoyalTVView()
    }
}


struct RoyalOneTvFooterView: View {
    var body: some View {
        HStack{
            Spacer()
            Image("Royal").resizable().frame(width: 90,height: 22.29)
            Image("Celebrity").resizable().frame(width: 90,height: 18.75)
            Image("Silversea").resizable().frame(width: 90,height: 8.1)
            Spacer()
        }.padding(.top,10)
    }
}







//HStack {
//    Spacer()
//    VStack {
//        Divider().background(.white)
//    }
//    Image("RCG").resizable().frame(width: 120,height: 44)
//    VStack {
//        Divider().background(.white).frame(minHeight: 4)
//    }
//    Spacer()
//}




//struct VideoCardView: View {
//    var categoryVideos : [Videos]
//    var body: some View {
//        ScrollView(.horizontal) {
//            HStack {
//                ForEach(categoryVideos) { videos in
//                    RoundedRectangle(cornerRadius: 8).frame(width: 250,height: 200).foregroundColor(.green)
//                }
//            }
//        }.scrollIndicators(.hidden)
//    }
//}
//
//
//










//        ZStack {
//            Color.black.opacity(0.2)
//            Image(systemName:"Background") // This will show
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 70, height: 70, alignment: .center)
//            List (royalModelData.categories ?? []) { category in
//                    VStack(alignment: .leading){
//                        Text(category.name ?? "")
//                        VideoCardView(categoryVideos: category.videos ?? [])
//                    }
//                    .listRowBackground(Color.clear)
//                       .listRowSeparator(.hidden)
//                }.background(Image("Background"))
//                .listStyle(GroupedListStyle())
//        }

