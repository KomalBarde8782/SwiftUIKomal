//
//  firEachDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 13/08/23.
//

import SwiftUI
//https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-views-in-a-loop-using-foreach
//https://www.youtube.com/watch?v=CKmsqRN-VM0
struct firEachDemo: View {
    let colours : [Color] = [.red,.green,.blue]
    let results = [
            SimpleGameResult(score: 8),
            SimpleGameResult(score: 5),
            SimpleGameResult(score: 10)
        ]
    
    let resultsId = [
            IdentifiableGameResult(score: 80),
            IdentifiableGameResult(score: 50),
            IdentifiableGameResult(score: 10)
        ]

    let data : [String] = [ "Hi","Hello","Hi everyone"]
    let myString : String = "Hello"
    var body: some View {
        ScrollView {
//            VStack(alignment: .leading) {
//                ForEach((1...10).reversed(),id: \.self){
//                    Text("\($0)")
//                }
//
//                Text("Ready")
//
//                ForEach(colours , id: \.self){ color in
//                    Text(color.description.capitalized).padding().background(color)
//                }
//
//                ForEach(results, id: \.id) { result in
//                    Text("Result: \(result.score)")
//                }
//
//                ForEach(resultsId) { result in
//                                Text("Result: \(result.score)")
//                            }
//            }
            VStack{
//                ForEach(0..<10){ index in
//                    //Text("Hi : \(index)")
//                    Circle().frame(width: 30,height: 30)
//                    Text("Index is :\(index)")
//                }
                
                ForEach(data.indices) { index in
                    Text("New Item :\(data[index])")
                }
            }
        }
        
        
        
    }
}

struct firEachDemo_Previews: PreviewProvider {
    static var previews: some View {
        firEachDemo()
    }
}


struct SimpleGameResult {
    let id = UUID()
    let score: Int
}

struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}




