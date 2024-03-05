//
//  OnChangeDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-run-some-code-when-state-changes-using-onchange
struct OnChangeDemo: View {
    @State private var name = ""
    var body: some View {
        TextField("Enter your name:", text: $name)
                   .textFieldStyle(.roundedBorder)
                   .onChange(of: name) { newValue in
                       print("Name changed to \(name)!")
                   }
    }
}

struct OnChangeDemo_Previews: PreviewProvider {
    static var previews: some View {
        OnChangeDemo()
    }
}
