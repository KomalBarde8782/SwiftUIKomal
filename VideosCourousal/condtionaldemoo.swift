//
//  condtionaldemoo.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 03/11/23.
//

import SwiftUI

struct TestView: View {
    @State var isFromHomeVideos:Bool = false
    
    
    var body: some View {
        Text("Hello, World!")
        .ifTrue(isFromHomeVideos){
            AnyView($0.foregroundColor(.red).frame(width: 200, height: 182))
        }
//        .ifTrue(activeTap){
//            AnyView($0.onTapGesture {
//                self.showOverlay = !self.showOverlay
//            })
//        }
    }
}
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

extension View {
    func ifTrue(_ condition:Bool, apply:(AnyView) -> (AnyView)) -> AnyView {
        if condition {
            return apply(AnyView(self))
        }
        else {
            return AnyView(self)
        }
    }
}
