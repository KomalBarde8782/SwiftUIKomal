//
//  listDemoNew.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 14/08/23.
//

import SwiftUI

//https://www.youtube.com/watch?v=bKBwCbtrGzQ&list=PLP9gGnNrveTAcL2vK0F56MJxznqmTMUwt&index=5
struct listDemoNew: View {
    var personArray : [Person] = [Person(name: "Komal", image: "goi"),
                                  Person(name: "Umesh", image: "image-2"),
                                  Person(name: "Bandya", image: "lap"),
                                  Person(name: "Pandya", image: "md"),
                                  Person(name: "Sonya", image: "GaneshJi"),
                                  Person(name: "Monya", image: "pic3")
    ]
    var body: some View {
        NavigationView {
            List(personArray) { person in
                CustomCellDemo(person: person)
            }.navigationTitle("List")
        }
    }
}

struct listDemoNew_Previews: PreviewProvider {
    static var previews: some View {
        listDemoNew()
    }
}
