//
//  labelDividerView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 06/09/23.
//

//https://stackoverflow.com/questions/56619043/show-line-separator-view-in-swiftui

import SwiftUI

struct LabelledDividerView: View {

   // let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(horizontalPadding: CGFloat = 10, color: Color = .white) {
        //self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            Spacer()
            line
            Image("RCG").resizable().frame(width: 120,height: 44)
            line
            Spacer()
        }
    }

    var line: some View {
        VStack {
            //Divider().background(color)
            CustomDivider()
        }.padding(horizontalPadding)
    }
}


struct RLabelledDivider_Previews: PreviewProvider {
    static var previews: some View {
        LabelledDividerView()
    }
}



struct CustomDivider: View {
  let color: Color
  let height: CGFloat
  let width : CGFloat

  init(color: Color = .white,
       height: CGFloat = 1,width : CGFloat = 75) {
    self.color = color
    self.height = height
      self.width = width
  }

  var body: some View {
    Rectangle()
      .fill(color)
      .frame(width : width, height: height)
      .edgesIgnoringSafeArea(.horizontal)
  }
}
