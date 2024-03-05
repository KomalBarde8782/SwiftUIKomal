//
//  customCollectionCell.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI

struct customCollectionCell: View {
    var index : Int
    var body: some View {
        RoundedRectangle(cornerRadius: 8).frame(width: 120,height: 120).foregroundColor(.green).overlay(Text("\(index)").font(.largeTitle).foregroundColor(.white))
    }
}

struct customCollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        customCollectionCell(index: 1)
    }
}
