//
//  HistoryUnavailableView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 02/01/24.
//

import SwiftUI

struct HistoryUnavailableView: View {
    var body: some View {
        VStack(){
            Text("History unavailable")
            Text("Your sailing history information is currently unavailable. Please check back later.")
                .padding([.leading, .trailing])
                .multilineTextAlignment(.center)
                .padding(.top , 10)
        }
    }
}

struct HistoryUnavailableView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryUnavailableView()
    }
}
