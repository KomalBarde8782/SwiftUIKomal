//
//  Earnpointsview.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 30/11/23.
//

import SwiftUI

struct Earnpointsview: View {
    let imageSample = "makeIcon"
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Earn points on every sailing")
                .font(.system(size: 32))
                .fontWeight(.bold)
                .dynamicTypeSize(...DynamicTypeSize.large)
                .foregroundColor(.black)
                
                .fixedSize(horizontal: false, vertical: true)
                .accessibilityIdentifier("earnPointsTitle")
                .scaledToFit()
                .background(.green)
                //.padding(.trailing, 40)
                
                
                
               
            
            Text("Please note")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .dynamicTypeSize(...DynamicTypeSize.large)
                .foregroundColor(.black)
                .accessibilityIdentifier("footnoteTitle")
                .padding(.top, 15)
            
            Text("Auto-enroll applies to U.S. and Canadian guests only. All other guests may enroll post-cruise in the app or online, or on a future sailing at the onboard Loyalty Desk.   You will earn one Cruise point for each completed night of sailing, plus earn an extra Cruise point per night when you purchase and sail in suite accommodations (categories RL, RS, PS, SL, TS, A1, A2, A3, CL, OS, FS, GS, JS) and/or sail in any category and pay a single pricing type for double occupancy staterooms.")
                .font(.system(size: 16))
                .dynamicTypeSize(...DynamicTypeSize.large)
                .foregroundColor(.black)
                .accessibilityIdentifier("footnoteDescription")
                .padding(.top, 15)
            Image(imageSample)
                .resizable()
                .scaledToFill()
                .frame(width: 100,height: 100)
        }
        .padding(.top, 10)
       // .padding(.horizontal, 10)
        .background(.red)
        
    }
}
    

struct Earnpointsview_Previews: PreviewProvider {
    static var previews: some View {
        Earnpointsview()
    }
}
