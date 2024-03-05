//
//  CustomCellDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI

struct CustomCellDemo: View {
    var person : Person
    var body: some View {
        HStack(spacing: 20){
            Image(person.image).resizable().frame(width: 90,height: 90,alignment: .leading).clipShape(Circle())
            Text(person.name).font(.largeTitle)
            Spacer()
        }
    }
}

struct CustomCellDemo_Previews: PreviewProvider {
    static var previews: some View {
        CustomCellDemo(person: Person(name: "Test", image: "goi"))
    }
}
