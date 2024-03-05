//
//  BindingDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=g3VOWHYTHzU&list=PLb5R4QC2DtFuRFJ35uPMhpY90s0VMNR-i&index=5

struct BindingDemo: View {
    @State var isOn : Bool = false
    var body: some View {
        VStack{
            Text("Binding Demo").font(.largeTitle).foregroundColor(isOn ? .blue : .gray)
            Text("CodeCat15").font(.title).foregroundColor(isOn ? .blue : .gray)
            ToggleView(isOn: $isOn)
        }
    }
}

struct BindingDemo_Previews: PreviewProvider {
    static var previews: some View {
        BindingDemo()
    }
}
