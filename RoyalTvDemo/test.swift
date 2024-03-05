////
////  test.swift
////  SwiftDemoNew
////
////  Created by Komal Barde on 07/09/23.
////
//
//import SwiftUI
//
//struct test: View {
//    @State var isBool: Bool = false
//    var body: some View {
//        AsyncImage(url: URL(string: "")) { imageResult in
//            switch imageResult {
//            case .success(let image):
//                self.isBool = true
//                imageResult.resizable()
//                    .frame(width: UIScreen.main.bounds.width, height: 400)
//                    .accessibilityIdentifier("videoFeaturingAsssetUrl")
//            case .failure(let error):
//                self.isBool = false
//                Image("placeholder")
//                    .resizable()
//                    .frame(width: UIScreen.main.bounds.width, height: 400)
//                    .accessibilityIdentifier("videoFeaturingPlaceholderImage")
//                    .onTapGesture {
//                        print("tappped placeholder")
//                    }
//                
//                
//            }
//        }
//    }
//    
//    struct test_Previews: PreviewProvider {
//        static var previews: some View {
//            test()
//        }
//    }
//}
