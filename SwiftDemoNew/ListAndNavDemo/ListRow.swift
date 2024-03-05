//
//  ListRow.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 15/08/23.
//

import SwiftUI

struct ListRow: View {
    var landmark : Landmark
    var body: some View {
        HStack{
            Image(landmark.photo).resizable().frame(width: 80,height: 80).clipShape(Circle())
            Text(landmark.name)
        }
    }
}


struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(landmark: Landmark(landmarkId: 1, name: "Komal", photo: "goi", description: "dfdsfffssd"))
    }
}
