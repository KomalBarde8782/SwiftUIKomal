//
//  LandmarkDescriptionView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 15/08/23.
//

import SwiftUI

struct LandmarkDescriptionView: View {
    var landmark : Landmark
    var body: some View {
        ScrollView{
            VStack{
                Text(landmark.description)
            }.padding()
        }
    }
}

struct LandmarkDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDescriptionView(landmark: Landmark(landmarkId: 1, name: "", photo: "goi", description: ""))
    }
}
