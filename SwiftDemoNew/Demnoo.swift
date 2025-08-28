//
//  Demnoo.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 24/07/25.
//

import SwiftUI

struct Demnoo: View {
    var body: some View {
//        GeometryReader { proxy in
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            }
//            .frame(width: proxy.size.width, height: proxy.size.height)
//            .background(.red)
//        }
        
        ZStack {
            GeometryReader { proxy in
                VStack(){
                    Text("Hello")
                    Text("World")
                }
            .frame(width: proxy.size.width / 2, height: proxy.size.height / 2)
                .background(.gray)
                .padding(.leading, proxy.size.width / 4)
                .padding(.top, proxy.size.width / 4)
            }
          
        }
        .frame(width: 200, height: 200)
        .background(.red)
        
    }
}

#Preview {
    Demnoo()
}
