//
//  ZSatckDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=TEGvSSJKnL0&t=38s
struct ZSatckDemo: View {
    var screenSize = UIScreen.main.bounds
    var body: some View {
        
//        ZStack{
//            Image("image-2").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
//
//            VStack (spacing: 50){
//                Image("lap").resizable().frame(width: 200,height: 200).clipShape(Circle())
//                VStack(spacing: 20){
//                    Button {
//                        print("SignUp Tapped")
//                    } label: {
//                        Text("SignUp").foregroundColor(.white).font(.system(size: 22))
//                    }.frame(width: screenSize.width - 40 , height: 50).background(Color.orange).cornerRadius(5)
//
//                    Button {
//                        print("Login Tapped")
//                    } label: {
//                        Text("Login").foregroundColor(.white).font(.system(size: 22))
//                    }.frame(width: screenSize.width - 40 , height: 50).background(Color.orange).cornerRadius(5)
//                }
//            }
//            Spacer()
//
//
//        }
        
        ZStack {
                    Color.blue
                    NavigationView {
                        Text("Hello, world!")
                            .padding()
                            .navigationTitle("Turkey Gizzards")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }.onAppear {
                    UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation") // Forcing the rotation to portrait
                    AppDelegate.orientationLock = .landscape // And making sure it stays that way
                }.onDisappear {
                    AppDelegate.orientationLock = .all // Unlocking the rotation when leaving the view
                }
    }
}

struct ZSatckDemo_Previews: PreviewProvider {
    static var previews: some View {
        ZSatckDemo()
    }
}

