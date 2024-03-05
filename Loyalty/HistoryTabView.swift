//
//  HistoryTabView.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 03/01/24.
//

import SwiftUI

struct HistoryTabView: View {
    var yearArray = ["2023", "2022","2024"]
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Text("Recent cruises and points can take up to 30 days post-cruise to display. If you don't see all your cruises, email crownandanchor@rccl.com for assistance")
                        .padding([.leading , .trailing , .top , .bottom] , 20)
                }
                .background(Color(red: 0.97, green: 0.98, blue: 0.98))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding([.leading, .trailing], 20)
                .padding(.top, 10)
                
                ForEach(0 ..< yearArray.count){ item in
                    VStack(alignment: .leading){
                        Text(yearArray[item])
                            .font(.system(size: 24))
                            .fontWeight(.bold)
                            .padding(.leading ,25)
                           
                        ForEach(1..<5) { _ in
                            HistoryView()
                                .padding(.top, 10)
                        }
                    }
                    .padding(.top, 15)
                }
                
            }
            
        }
    }
}

struct HistoryTabView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryTabView()
    }
}
