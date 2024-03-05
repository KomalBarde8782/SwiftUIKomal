//
//  ObservedObjectDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=GG0z7LpNyq4&list=PLb5R4QC2DtFuRFJ35uPMhpY90s0VMNR-i&index=6

struct ObservedObjectDemo: View {
    @ObservedObject var user : UserModel = UserModel()
    @State var name : String = ""
    var body: some View {
        VStack{
            Text("User name is :\(name)").font(.title2)
            TextField("User", text: $name).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
        }
    }
}

struct ObservedObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectDemo()
    }
}
