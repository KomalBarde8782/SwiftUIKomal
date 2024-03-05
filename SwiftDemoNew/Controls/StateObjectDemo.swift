//
//  StateObjectDemo.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 12/08/23.
//

import SwiftUI
//https://www.youtube.com/watch?v=RvzJLekIjRs
class CounterViewModel : ObservableObject{
    @Published var count = 0
    func increaseCount(){
        count += 1
    }
}

struct RandomNumber: View {
    @State var randomNumber = 0
    var body: some View {
        VStack{
            Text("RandomNum : \(randomNumber)")
            Button("RandomNumber") {
                randomNumber =  (0...100).randomElement()!
            }
            StateObjectDemo()
        }
    }
}

struct StateObjectDemo: View {
    @StateObject var viemodel = CounterViewModel()
    var body: some View {
        VStack{
            Text("Count : \(viemodel.count)")
            Button("Increse Count") {
                viemodel.increaseCount()
            }
        }
    }
}




struct StateObjectDemo_Previews: PreviewProvider {
    static var previews: some View {
        RandomNumber()
    }
}
