//
//  ThirdView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var user : User
    @EnvironmentObject var account : Account
    var body: some View {
        VStack{
            Text("Login User Name : \(user.name)")
            Text("bal is : \(account.accountBalance)")
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView().environmentObject(User()).environmentObject(Account())
    }
}
