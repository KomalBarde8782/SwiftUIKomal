//
//  LandMarkDetails.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 13/08/23.
//

import SwiftUI

struct LandMarkDetails: View {
    var landamrk : Landmark
    var body: some View {
        VStack{
            Image(landamrk.photo).resizable().scaledToFit().cornerRadius(10)
            Text(landamrk.description)
            Spacer()
        }.padding()
    }
}

struct LandMarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetails(landamrk: Landmark(landmarkId: 1, name: "Dagdushet", photo: "goi", description: "sdsfdsfsdfdsf"))
        
    }
                        
}
