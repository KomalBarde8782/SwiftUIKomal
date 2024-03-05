//
//  ViewModifierDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
import UIKit
//https://www.youtube.com/watch?v=MQl4DlDf_5k
struct DefaultButtonViewModeifier : ViewModifier{
    let bgColour : Color
    func body(content : Content) -> some View {
        content.foregroundColor(.white).frame(height: 55).frame(maxWidth: .infinity).background(bgColour).cornerRadius(10).shadow(radius: 10).padding()
    }
}

extension View{
    func withDefaultButtonMod(bgcolour : Color) -> some View{
        modifier(DefaultButtonViewModeifier(bgColour: bgcolour))
    }
}

struct ViewModifierDemo: View {
    var body: some View {
        VStack(spacing: 10){
            Text("Hello World").modifier(DefaultButtonViewModeifier(bgColour: .red)).font(.largeTitle)
            Text("Hello").modifier(DefaultButtonViewModeifier(bgColour: .green)).font(.title2)
            Text("Hi").withDefaultButtonMod(bgcolour: .orange).font(.title)
            
            
        }
    }
}

struct ViewModifierDemo_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierDemo()
    }
}
