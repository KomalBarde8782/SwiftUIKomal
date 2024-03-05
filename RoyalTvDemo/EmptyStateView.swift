//
//  EmptyStateView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 21/09/23.
//

import SwiftUI
import UIKit

struct EmptyStateView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.1607843137254902, green: 0.15294117647058825, blue: 0.14901960784313725, alpha: 1))
            VStack{
                Image("Play")
                Text("\(("Royal").lowercased()):" + "\("Our Ships".lowercased()):")
                    .foregroundColor(.white)
                    .font(.title).padding(.top ,20)
                Text("Something went wrong!")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding(.top, 5)
            }
            
            VStack {
                Spacer()
                Button(action: {
                    print("Button tapped!")
                }) {
                    Text("Try Again")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(5)
                }.padding(.leading ,10)
                    .padding(.trailing,10)
                Spacer()
                    .frame(height:50)
            }
        }
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
    }
}
