//
//  AlertView.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=bSuqBR-YGpQ&list=PLyk1_B-u08LN06cVhrzWTCnXPZ15hKzGu&index=12
struct AlertView: View {
    @State var simpleAlert = false
    @State var simpleAlertMessage = false
    @State var simpleMyAlertMessage = false
    @State var simpleActionSheet = false
    @State var message = ""
    var body: some View {
        VStack {
            Text("\(message)")
            Button("Simple Alert") {
                        simpleAlert.toggle()
                   }.alert(isPresented: $simpleAlert, content: {
                        Alert(title: Text("Simple Alert"))
               })
            
            Button("Simple Alert With message") {
                             simpleAlertMessage.toggle()
                         }.alert(isPresented: $simpleAlertMessage, content: {
                        Alert(title: Text("Simple Alert With message"), message: Text("Simple alert With message"), dismissButton: Alert.Button.default(Text("Press this"), action: {
                              message = "Button clicked"
                        }))
                      })
            
            Button("SimpleMyAlert") {
                simpleMyAlertMessage.toggle()
            }.alert(isPresented: $simpleMyAlertMessage) {
                let primaryBtn = Alert.Button.default(Text("Ok")) {
                    print("primaryBtn pressed")
                }
                let secBtn = Alert.Button.destructive(Text("Cancel"))
                return  Alert(title: Text("Simple Custom ALert"), primaryButton: primaryBtn, secondaryButton: secBtn)
            }
            
            Button("Simple ActionSheet") {
                             simpleActionSheet.toggle()
                         }.actionSheet(isPresented: $simpleActionSheet, content: {
                             
                             let action1 = ActionSheet.Button.default(Text("First action")) {
                                 message = "Action Sheet first action clicked"
                             }
                             
                             let action2 = ActionSheet.Button.default(Text("Second action")) {
                                 message = "Action Sheet second clicked"
                             }
                             
                            return ActionSheet(title: Text("Action Sheet"), message: Text("Message"), buttons: [action1, action2])
                         })
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
