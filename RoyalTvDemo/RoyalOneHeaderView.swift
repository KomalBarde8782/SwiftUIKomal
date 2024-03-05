//
//  RoyalOneHeaderView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 05/09/23.
//

import SwiftUI

struct RoyalOneHeaderView: View {
    var body: some View {
        ZStack{
            HStack{
                Button(action: {
                    print("button pressed")
                    
                }) {
                    Image("close")
                        .renderingMode(.original).resizable().frame(width: 20,height: 20)
                }
                Spacer()
            }
            
            HStack{
                Text("RoyalONE®TV").modifier(CategoryTitleCustomModifier(size: 20))
            }
            
        }
    }
}

struct RoyalOneHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RoyalOneHeaderView()
    }
}
