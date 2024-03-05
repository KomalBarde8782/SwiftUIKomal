//
//  ViewBuilderDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=nokF9nKoXpQ
struct ViewBuilderDemo: View {
    var body: some View {
        NavigationView {
            VStack{
                //customView
                AlertViewBuilder {
                    Image(systemName: "exclamationmark.triangle.fill").resizable().frame(width: 65,height: 65)
                    Text("Here is custom alert with builder")
                }
            }.navigationTitle("View Builder")
        }
    }
}

struct AlertViewBuilder <Content : View>: View{
    let content : Content
    init(@ViewBuilder content : () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack{
            content.padding()
            Divider()
            HStack{
                Button(action: {}) {
                    Text("Cancel").bold().foregroundColor(.red)
                }
                Spacer()
                Button(action: {}) {
                    Text("Confirm").bold().foregroundColor(.green)
                }
            }
        }.frame(width: UIScreen.main.bounds.size.width/2).background(.blue).cornerRadius(7).padding()
    }
}

struct ViewBuilderDemo_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderDemo()
    }
}
