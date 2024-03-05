//
//  VideoCategoryItemView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 26/10/23.
//

import SwiftUI



struct HomeVideoCategoryItemView: View {
    @EnvironmentObject var dataModel: VideosDataModel
    
    /// Video Information
    let item: HomeVideoCategoryItem
    
    var body: some View {
       // ZStack {
        
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 230,
                   height: 200)
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.3), radius: 10)
            . overlay {
            
            
            AsyncImage(url: item.image) { image in
                VStack(alignment: .leading, spacing: 4) {
                    image
                        .resizable()
                        .scaledToFill()
                        .accessibilityIdentifier("videoItemImage")
                        .frame(height: 114)
                        .clipped()
                    Text(item.title)
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .dynamicTypeSize(...DynamicTypeSize.small)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity,
                               alignment: .topLeading)
                        .padding(.horizontal, 6)
                        .padding(.leading, 16)
                        .padding(.top, 16)
                        .accessibilityIdentifier("videoItemTitle")
                }
            } placeholder: {
                VStack(alignment: .leading, spacing: 4) {
                    ZStack {
                        Image("placeholder")
                            .resizable()
                            .scaledToFill()
                            .scaleEffect(2)
                            .accessibilityIdentifier("videoItemPlaceholderImage")
                        Rectangle()
                            .foregroundColor(.clear)
                            .accessibilityIdentifier("videoItemPlaceholdeViewr")
                    }
                    .frame(height: 114)
                    .clipped()
                    Text(item.title)
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                        .dynamicTypeSize(...DynamicTypeSize.small)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity,
                               alignment: .topLeading)
                        .padding(.horizontal, 6)
                        .accessibilityIdentifier("videoItemTitle")
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 150, height: 20)
                        .cornerRadius(5)
                        .accessibilityIdentifier("videoItemTitlePlaceholder")
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 100, height: 20)
                        .cornerRadius(5)
                        .accessibilityIdentifier("videoItemTitlePlaceholder")
                }
            }
            //.frame(width: 200,
               //    height: 158)
           
            .cornerRadius(10)
            
            //}.shadow(color: .black.opacity(0.3), radius: 10)
            
        }
           
    }
}

struct HomeVideoCategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeVideoCategoryItemView(item: HomeVideoCategoryItem(title: "Icon of the Seas | Kids, Teens, & Family Adve...", image: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg"), video: nil))
    }
}

//
