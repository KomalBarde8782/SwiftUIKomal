////
////  shimmerDemoView.swift
////  SwiftDemoNew
////
////  Created by Komal Barde on 15/09/23.
////
//
//import SwiftUI
//
//struct shimmerDemoView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct shimmerDemoView_Previews: PreviewProvider {
//    static var previews: some View {
//        shimmerDemoView()
//    }
//}
//
//  CruisesModuleView.swift
//  Home
//
//  Created by Sahdevsinh Chavda on 05/09/23.
//

import SwiftUI


/// Representing the cruise trip card module
struct CruisesModuleView: View {
    let model: CruiseModuleModel
    let royalModelData = BundleDecoderRoyal.decodeLandmarkBundleJson()
        init(model: CruiseModuleModel) {
            self.model = model
        }
 
    
    var body: some View {
       // VStack(alignment: .leading, spacing: 16) {
        ScrollView{
            VStack(alignment: .leading, spacing: 16) {
                Text("Komal")
                ForEach(model.cruiseCardModel) { cruiseCardModel in
                    CruiseCardView(model: cruiseCardModel).background(.black)
                }.background(.black)
                
                /// kom
//                Group{
//                    FeaturedVideoView(featuredVideo: FeaturedVideo(title: "MAKING AN ICON", videoUrl: "", assetUrl: ""), model: VideoCategoryItem(title: "MAKING AN ICON", image: nil, video: nil))
//                    ForEach (royalModelData.categories ?? []) { category in
//                        Text(category.name ?? "").modifier(CategoryTitleCustomModifier(size: 18)).padding(10)
//                        VideoCardView(categoryVideos: category.videos ?? [])
//                    }
//
//
//                    .padding(.leading,25)
//                }
                
            }
            
            .frame(maxWidth: .infinity, minHeight: 200)
            .shimmer(viewModel: model.refreshShimmerViewModel)
        }
        //}
    }
}

#if DEBUG
struct CruisesModuleView_Previews: PreviewProvider {
    static var previews: some View {
        CruisesModuleView(model: CruiseModuleModel(title: "Test", cruiseCardModel: [CruiseCardModel(title: "Test Card1", shipName: "TestShip1", datesText: "", reservationTitle: "", reservationNumber: "", imageURL: nil),
        
                                                                                                CruiseCardModel(title: "Test Card2", shipName: "TestShip2", datesText: "", reservationTitle: "", reservationNumber: "", imageURL: nil)
        
        
        
                                                                                               ]))
    }
}
#endif



