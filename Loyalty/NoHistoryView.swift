//
//  NoHistoryView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 02/01/24.
//

import SwiftUI

struct NoHistoryView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("You have 0 past cruises")
                .padding(.leading , 20)
            
            HStack{
                Text("Recent cruises and points can take up to 30 days post-cruise to display. Please enroll or associate your Captain’s Club number with your account, and we'll look for more of your cruises. After doing so, if you don't see all your cruises, email cec@celebrity.com for assistance.")
                    .padding([.leading , .trailing , .top , .bottom] , 20)
            }
            .background(Color(red: 0.97, green: 0.98, blue: 0.98))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding([.leading, .trailing], 20)
            .padding(.top, 10)
        }
    }
}

struct NoHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        NoHistoryView()
    }
}
