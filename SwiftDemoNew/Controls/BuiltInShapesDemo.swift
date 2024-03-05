//
//  BuiltInShapesDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI
//https://www.hackingwithswift.com/quick-start/swiftui/swiftuis-built-in-shapes

struct BuiltInShapesDemo: View {
    var body: some View {
        ScrollView {
            VStack{
                Rectangle()
                               .fill(.gray)
                               .frame(width: 200, height: 200)

                           RoundedRectangle(cornerRadius: 25)
                               .fill(.red)
                               .frame(width: 200, height: 200)

                           

                           Capsule()
                               .fill(.green)
                               .frame(width: 100, height: 50)

                           Ellipse()
                               .fill(.blue)
                               .frame(width: 100, height: 50)

                           Circle()
                               .fill(.white)
                               .frame(width: 100, height: 50)
            }
        }
    }
}

struct BuiltInShapesDemo_Previews: PreviewProvider {
    static var previews: some View {
        BuiltInShapesDemo()
    }
}
