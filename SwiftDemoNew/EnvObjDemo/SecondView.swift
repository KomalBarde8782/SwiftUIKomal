//
//  SecondView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var user : User
    @EnvironmentObject private var account : Account
    var body: some View {
        Text("Login User Name : \(user.name)")
        TextField("Accountbalance", text: $account.accountBalance)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        NavigationLink("Navigate", destination: ThirdView())
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
