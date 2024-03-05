//
//  accessibilityDemo.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 25/10/23.
//

import SwiftUI

struct accessibilityDemo: View {
    var body: some View {
        Image("goi")
                   .resizable()
                   .scaledToFit()
                  // .accessibilityLabel("Cherry Blossom")
                   .onTapGesture {
                       print("Cherry Blossom")
                   }
                  // .accessibilityAddTraits(.isButton)
                   .accessibilityRemoveTraits(.isImage)
                   .accessibilityHint("Tap to print \"Cherry Blossom\"")
        
//        VStack {
//                    Text("My favorite flower is")
//                    Text("Cherry Blossom")
//                }
//               .accessibilityElement(children: .combine)
//                .accessibilityElement(children: .ignore)
//                .accessibilityLabel("My favorite flower is Cherry Blossom")
    }
}

struct accessibilityDemo_Previews: PreviewProvider {
    static var previews: some View {
        accessibilityDemo()
    }
}
