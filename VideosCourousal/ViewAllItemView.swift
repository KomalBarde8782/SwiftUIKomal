//
//  ViewAllItemView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 27/10/23.
//

import SwiftUI

struct ViewAllItemView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg")) { image in
            
            
            image.resizable()
                .scaledToFill()
            
                .frame(width: 250,
                       height: 200)
                .clipped()
                .cornerRadius(10)
                .accessibilityIdentifier("videoFeaturingAsssetUrl")
        } placeholder: {
            
        }
        
        
    }
}

struct ViewAllItemView_Previews: PreviewProvider {
    static var previews: some View {
        ViewAllItemView()
    }
}
