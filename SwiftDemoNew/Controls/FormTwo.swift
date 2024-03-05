//
//  FormTwo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import SwiftUI
import UIKit
//https://www.youtube.com/watch?v=m0QQ-hWs8fc
//https://blog.logrocket.com/building-forms-swiftui-comprehensive-guide/

struct FormTwo: View {
    @State private var birthDate = Date()
    @State private var isOn : Bool = false
    @State private var numberOfLikes = 1
    @State var volumeSliderValue: Double = 0

    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("User Details")) {
                    TextFieldView()
                    DatePicker("BirthDate",selection: $birthDate,displayedComponents : .date)
                }
                Section(header: Text("Actions")) {
                    Toggle("Send NewsPaper", isOn: $isOn).toggleStyle(SwitchToggleStyle(tint: .red))
                    Stepper("Number Of Likes", value: $numberOfLikes,in : 1...100)
                    Text("This Video has \(numberOfLikes) likes")
                    Link("Terms of service", destination: URL(string: "https://www.youtube.com/watch?v=m0QQ-hWs8fc")!)
                    
                }
                
                Section(header: Text("Slider")) {
                                    Slider(value: $volumeSliderValue, in: 0...100, step: 1)
                                    .padding()
                                    .accentColor(Color.blue)
                                    .border(Color.blue, width: 3)
                                }
                                .padding(.horizontal, 16)
              
            }
            .navigationBarTitle("Accounts")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        hideKeyboard()
                    } label: {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    Button("Save") {
                        saveUser()
                    }

                }
            }
        }.accentColor(.red)
    }
    
    func saveUser(){
        print("Saved")
    }
}

struct FormTwo_Previews: PreviewProvider {
    static var previews: some View {
        FormTwo()
    }
}


#if canImport(UIKit)
extension View{
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
