//
//  CruisePointsView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 02/01/24.
//

import SwiftUI

struct CruisePointsView: View {
    var body: some View {
        ZStack(alignment: .top){
                Image("Group 481935")
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipped()
                    .accessibilityIdentifier("videoFeaturingAsssetUrl")
            ZStack{
                HStack{
                    Text("14")
                        .foregroundColor(.white)
                    Text("Cruise Points")
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(.white)

                }
                .frame(width: 100, height: 50, alignment: .center)
            }
            .background(Color(red: 0.07, green: 0.08, blue: 0.09).opacity(0.8))
            .cornerRadius(10)
            .padding(.top, 10)
            

        }
    }
}

struct CruisePointsView_Previews: PreviewProvider {
    static var previews: some View {
        CruisePointsView()
    }
}


//           Rectangle()
//                .foregroundColor(Color(red: 0.07, green: 0.08, blue: 0.09).opacity(0.8))
//                .cornerRadius(10)
//                .frame(width: 100, height: 50, alignment: .center)
//                .overlay {
//                    HStack{
//                        Text("14")
//                            .foregroundColor(.white)
//                        Text("Cruise Points")
//                            .lineLimit(2)
//                            .fixedSize(horizontal: false, vertical: true)
//                            .foregroundColor(.white)
//
//                    }
//                }
//                .padding(.top, 10)
