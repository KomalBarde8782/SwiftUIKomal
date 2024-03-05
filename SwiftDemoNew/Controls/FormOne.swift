//
//  FormOne.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=jrAA9Gt-jqw

struct FormOne: View {
    @State var receive = false
    @State var number = 1
    @State var userName : String = ""
    var courses = ["SwiftUI","Swift","OBJC"]
    @State var selectedCourse : String = "SwiftUI"
    @State var date = Date()
    @State var submit : Bool = false
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn:$receive ){
                    Text("Receive Notification")
                }
                Stepper(value: $number, in : 1...10 ){
                    Text("\(number) Notification\(number > 1 ? "s" : "")")
                }
                Picker(selection: $selectedCourse) {
                    ForEach(courses , id: \.self){
                        Text($0)
                    }
                } label: {
                    Text("Favourite Course")
                }
                
                DatePicker(selection: $date) {
                    Text("Date")
                }
                
                Section (header:Text("Email")){
                    TextField("UserName", text: $userName).padding().textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Button(action: {self.submit.toggle() }) {
                        Text("Click Me")
                }
                   
          

            }.navigationBarTitle("Settings")
        }
    }
}

struct FormOne_Previews: PreviewProvider {
    static var previews: some View {
        FormOne()
    }
}
