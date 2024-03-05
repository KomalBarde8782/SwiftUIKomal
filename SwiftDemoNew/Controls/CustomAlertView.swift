//
//  CustomAlertView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
enum ClickedButton{
    case Ok
    case Cancel
    case None
}

struct CustomAlertView: View {
    @Binding var shown : Bool
    @Binding var buttonClicked : ClickedButton
    var isSucess : Bool
    var body: some View {
        VStack{
            Image(systemName: isSucess ? "checkmark.seal.fill" : "x.circle.fill").resizable().frame(width: 50,height: 50).foregroundColor(isSucess ? .green : .red).padding(.top , 10)
            Spacer()
            Text(isSucess ? "This is successs alert!" : "This is Faliure alert")
            Spacer()
            Divider()
            HStack{
                Button("Ok") {
                    shown.toggle()
                    buttonClicked = .Ok
                }.frame(width:UIScreen.main.bounds.width/2 - 25 , height: 40).foregroundColor(.white)
                Button("Cancel") {
                    shown.toggle()
                    buttonClicked = .Cancel
                }.frame(width:UIScreen.main.bounds.width/2 - 25 , height: 40).foregroundColor(.white)
            }
        }.frame(width: UIScreen.main.bounds.width - 50 , height: 200).background(Color.black.opacity(0.5).cornerRadius(12).clipped())
    }
}

struct CustomAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView(shown: .constant(false), buttonClicked: .constant(.None), isSucess: false)
    }
}
