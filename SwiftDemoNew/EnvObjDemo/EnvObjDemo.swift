//
//  EnvObjDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=oJg5CJSXs6w&list=PLb5R4QC2DtFuRFJ35uPMhpY90s0VMNR-i&index=6

struct EnvObjDemo: View {
    @StateObject private var dataModel = VideosDataModel()
    @ObservedObject private var user : User = User()
    @ObservedObject private var accc : Account = Account()
    var body: some View {
        NavigationView {
            VStack {

                //Text("Logged in username = \(user.name)")
               // TextField("Username", text: $user.name)
                 //   .textFieldStyle(RoundedBorderTextFieldStyle())
                NavigationLink("navigate to second view", destination: //SecondView()
                               SubtitlesDemo()
                )
            }.padding()
            .navigationBarTitle(Text("Environment Object"))
        }
        .environmentObject(dataModel)
       // .environmentObject(user).environmentObject(accc)
    }
}

struct EnvObjDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvObjDemo()
    }
}
