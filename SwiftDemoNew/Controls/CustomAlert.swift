//
//  CustomAlert.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI

//https://www.youtube.com/watch?v=D0V0ic_Ya8A&list=PLyk1_B-u08LN06cVhrzWTCnXPZ15hKzGu&index=13
struct CustomAlert: View {
    @State var shown = false
    @State var buttonClicked : ClickedButton = .None
    @State var isSuccess : Bool = false
    var body: some View {
        ZStack{
            VStack {
                Image("lap").resizable().frame(width: 300,height: 300)
                Button("Success Alert") {
                    self.isSuccess = true
                    shown.toggle()
                }
                
                Button("Failure Alert") {
                    self.isSuccess = false
                    shown.toggle()
                }
                Text(buttonClicked == .Ok ? "OK Clicked" : buttonClicked == .Cancel ? "Cancel Clicked" : "")
                Spacer()
                
            }.blur(radius: shown ? 30 : 0)
            if shown{
                CustomAlertView(shown: $shown, buttonClicked: $buttonClicked, isSucess: isSuccess)
            }
        }
    }
}

struct CustomAlert_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlert()
    }
}
