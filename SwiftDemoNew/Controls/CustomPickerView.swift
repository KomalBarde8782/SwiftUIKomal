//
//  CustomPickerView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=2pSDE56u2F0
struct CustomPickerView: View {
    @State var selectedTag : String = "1"
    var body: some View {
        VStack {
            Text("Age : \(selectedTag)")
            Picker(selection: $selectedTag,label: Text("Picker")) {
//                Text("1").tag(1)
//                Text("2").tag(2)
//                Text("3").tag(3)
//                Text("4").tag(4)
                ForEach(18..<100){number in
                    Text("\(number)").tag("\(number)").font(.headline).foregroundColor(.red)
                    
                    
                }
            }.background(Color.gray.opacity(0.3)).pickerStyle(WheelPickerStyle())
        }
    }
}

struct CustomPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPickerView()
    }
}


//https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-picker-and-read-values-from-it
//https://medium.com/@sarimk80/pickers-in-swiftui-363b16036fcb
struct PickerVieww: View {
    @Binding var selectedCoulur : String
    var colours = ["Red","Green","Orange","Yellow","Blue"]
    var body: some View {
        Picker("Please choose colour", selection: $selectedCoulur) {
            ForEach(colours,id: \.self){
                Text($0)
            }
        }.pickerStyle(.segmented)
        //pickerStyle(.wheel)
        //pickerStyle(.menu)
    }
}
