//
//  GridDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI
//https://www.appcoda.com/learnswiftui/swiftui-gridlayout.html

struct GridDemo: View {
    private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]

    private var colors: [Color] = [.yellow, .purple, .green]

    //private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    private var gridItemLayout = [GridItem(.fixed(150)), GridItem(.adaptive(minimum: 50))]

    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 20) {
                ForEach((0...9999), id: \.self) {
                    Image(systemName: symbols[$0 % symbols.count])
                        .font(.system(size: 30)).frame(minWidth: 0, maxWidth: .infinity, minHeight: 50)
                        //.frame(width: 50, height: 50)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct GridDemo_Previews: PreviewProvider {
    static var previews: some View {
        GridDemo()
    }
}
