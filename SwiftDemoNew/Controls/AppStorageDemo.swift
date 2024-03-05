//
//  AppStorageDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI

//https://www.youtube.com/watch?v=zyuSUrfelw8
struct AppStorageDemo: View {
    //@State var currentName : String?
    @AppStorage("name") var  currentName : String?
    var body: some View {
        VStack(spacing: 20) {
            Text(currentName ?? "Add name here")
            if let name = currentName{
                Text(name)
            }
            Button("Save".uppercased()) {
                self.currentName = "Komal"
               // UserDefaults.standard.set(currentName, forKey: "name")
            }
        }
//        .onAppear{
//            currentName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageDemo_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageDemo()
    }
}
