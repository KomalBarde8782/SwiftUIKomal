////
////  HistoryView.swift
////  SwiftDemoNew
////
////  Created by Komal Barde on 29/12/23.
////

import SwiftUI

struct HistoryView: View {
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("7 Night Norwegian Fjords Cruise")
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .dynamicTypeSize(...DynamicTypeSize.large)
                    .accessibilityIdentifier("cruiseCardTitleLabel")
                VStack(alignment: .leading, spacing: 2){
                    Text("Celebrity Silhouette")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                    Text("Jun 24 — Jul 1, 2023")
                        .font(.system(size: 12))
                }.padding(.top, 10)
            }
            .padding(16)
            
            Spacer()
            
 
//            ZStack(alignment: .top){
//                    Image("Group 481935")
//                        .scaledToFill()
//                        .frame(width: 120, height: 120)
//                        .clipped()
//                        .accessibilityIdentifier("videoFeaturingAsssetUrl")
//                ZStack{
//                    HStack{
//                        Text("14")
//                            .foregroundColor(.white)
//                            .font(.system(size: 18))
//                            .fontWeight(.bold)
//                        Text("Cruise Points")
//                            .lineLimit(2)
//                            .font(.system(size: 12))
//                            .fixedSize(horizontal: false, vertical: true)
//                            .foregroundColor(.white)
//
//                    }
//                    .frame(width: 100, height: 50, alignment: .center)
//                }
//                .background(.black.opacity(0.5))
//                .cornerRadius(10)
//                .padding(.top, 10)
//
//
//            }
            
            AsyncImage(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg"), content: { image in
                            ZStack(alignment: .top){
                                    image
                                        .scaledToFill()
                                        .frame(width: 120, height: 120)
                                        .clipped()
                                        .accessibilityIdentifier("videoFeaturingAsssetUrl")
                                ZStack{
                                    HStack{
                                        Text("14")
                                            .foregroundColor(.white)
                                            .font(.system(size: 18))
                                            .fontWeight(.bold)
                                        Text("Cruise Points")
                                            .lineLimit(2)
                                            .font(.system(size: 12))
                                            .fixedSize(horizontal: false, vertical: true)
                                            .foregroundColor(.white)
                
                                    }
                                    .frame(width: 100, height: 50, alignment: .center)
                                }
                                .background(.black.opacity(0.5))
                                .cornerRadius(10)
                                .padding(.top, 10)
                
                
                            }
            },placeholder: {
                Color.gray
            })
            .frame(width: 120, height: 120)
            
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .roundedBackground()
        .padding([.leading, .trailing], 20)
    }
    
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
