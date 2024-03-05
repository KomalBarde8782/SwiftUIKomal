//
//  CollectionViewDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=rkcH0ks9bwM&list=PLP9gGnNrveTAcL2vK0F56MJxznqmTMUwt&index=3
struct CollectionViewDemo: View {
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 10) {
                ForEach((0...9999), id: \.self) {index in
                    customCollectionCell(index: index)
                }
            }.padding()
        }
    }
}

struct CollectionViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewDemo()
    }
}
