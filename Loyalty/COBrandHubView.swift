//
//  COBrandHubView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 05/12/23.
//

import SwiftUI

struct COBrandHubView: View {
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 157, height: 100)
                .frame(width: 157, height: 100)
            Text("25,000")
                .font(.system(size: 40))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .accessibilityIdentifier("bonusPoints")
            Text("ONLINE BONUS POINTS OFFER")
                .font(.system(size: 12))
                .foregroundColor(.black)
                .accessibilityIdentifier("bonusOffer")
            Text("A sea of rewards")
                .font(.system(size: 32))
                .foregroundColor(.black)
                .padding(.top, 3)
                .accessibilityIdentifier("rewardTitle")
            Text("Redeem for $250 onboard credit, or stateroom upgrades and more")
                .font(.system(size: 18))
                .foregroundColor(.black)
                .padding(.top, 3)
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .multilineTextAlignment(.center)
            Button(action: {
                
            }) {
                Text("Try Again")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .dynamicTypeSize(...DynamicTypeSize.large)
                .padding(.horizontal, 24)
                .padding(.vertical, 16)
            }
            .background(Color.black)
            .cornerRadius(4)
            .padding(.horizontal, 20)
            .padding(.top, 10)
            .accessibilityIdentifier("tvTryAgain")
            
            Text("Must apply here. Offers vary elsewhere. Residents of the U.S. and its territories only. See full disclosure for details.")
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.top, 10)
                .padding(.bottom, 20)
            
        }
    }
}

struct COBrandHubView_Previews: PreviewProvider {
    static var previews: some View {
        COBrandHubView()
    }
}
