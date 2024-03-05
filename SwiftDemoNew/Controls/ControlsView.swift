//
//  ControlsView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import SwiftUI

struct ControlsView: View {
    @State var isSound = true
    @State var selectedCoulur : String = "Red"
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    Group{
                        HStack{
                            Text("Hello")
                            Text("Hello")
                        }
                        
                        Text(isSound ? "hii" : "Hello")
                       TextFieldView()
                        MenuButton()
                        ButtonView(isOn: isSound)
                        Image(systemName: isSound ? "speaker.1.fill" : "speaker.slash.fill").font(.system(size: 80)).foregroundColor(isSound ? .blue : .red)
                        ToggleView(isOn: $isSound)
                       
                        PickerVieww(selectedCoulur: $selectedCoulur)
                        Text("Colour Selected :\(selectedCoulur)")
                        CustomPickerView()
                        
                       
                    }
                    Divider()
                   
                }.padding().navigationTitle("ControlsView")
            }
        }
        
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}

//https://medium.com/@kalyan.parise/swiftui-views-and-controls-986479f734b
struct TextFieldView: View {
    @State var tName : String = ""
    @State var userName : String = ""
    var body: some View {
        VStack{
            TextField("UserName", text: $userName).textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Enter a Password", text: $tName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}


struct MenuButton: View {
    @State var tName : String = ""
    @State var userName : String = ""
    var body: some View {
        Text("Click here for menu")
            .font(.largeTitle)
            .foregroundColor(.red)
            .contextMenu {
                Button(action: {
                    // Action
                }) {
                    Text("Delete")
                    Image(systemName: "trash")
                }
                Button(action: {
                    // action
                }) {
                    Text("Add")
                    Image(systemName: "plus")
                }
                Button(action: {
                    // Action
                }) {
                    Text("Share")
                    Image(systemName: "square.and.arrow.up")
                }
                Button(action: {
                    // action
                }) {
                    Text("Favorite")
                    Image(systemName: "heart.fill")
                }
            }    }
}



struct ButtonView: View {
    var isOn : Bool
    var body: some View {
        Button(
            action: {
                // did tap
                print("Tapped")
                
            },
            label: {
                Image(systemName: "person")
                    .imageScale(.small)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Text("Click Me")
                    .font(.system(size: 20,weight: .regular,design: .rounded))
                    .foregroundColor(.white)
                    .frame(width:100, height:50)
            })
        .background(isOn ? Color.blue : Color.gray)
        .frame(width:300, height:50)
        .padding()
        .cornerRadius(5)
    }
}

struct ToggleView: View {
    @Binding var isOn : Bool
    var body: some View {
        Toggle(isOn:$isOn) {
            Text("Sound").font(.largeTitle).foregroundColor(.cyan).fontWeight(.bold)
        }.fixedSize()
    }
}


