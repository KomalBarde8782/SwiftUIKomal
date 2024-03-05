//
//  PicsImageView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import Foundation
import SwiftUI
struct PicsImageView: View {
    var url : String
    var isDetailView : Bool
    var body: some View {
        AsyncImage(url: URL(string: url),
                   content : {image in image.resizable().aspectRatio(
                    contentMode: isDetailView ? .fill : .fit).cornerRadius(isDetailView ? 0 : 20).shadow(radius:20)},
                   placeholder:{
            ProgressView()
            
        })
    }
}
