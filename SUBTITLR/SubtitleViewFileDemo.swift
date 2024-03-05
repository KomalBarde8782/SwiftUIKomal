//
//  SubtitleViewFileDemo.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 18/10/23.
//

import SwiftUI

struct SubtitleViewFileDemo: View {
    @EnvironmentObject var dataModel: VideosDataModel
    var body: some View {
        Text(dataModel.subtitleText)
           // .font(.caption)
            .foregroundColor(.white)
            //.padding()
            .background(Color.black.opacity(0.7))
            //.cornerRadius(10)
        .foregroundColor(.white)
    }
}

struct SubtitleViewFileDemo_Previews: PreviewProvider {
    static var previews: some View {
        SubtitleViewFileDemo()
    }
}
