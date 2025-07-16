//
//  StateObjDemo.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 10/07/25.
//


//🔹 @StateObject – Owner and Creator
//Used when the current view creates and owns the observable object.
//
//SwiftUI manages the lifecycle of the object.
//
//The object is created once during the view’s lifecycle, even if the view is recreated.
//
//✅ Use when:
//You're initializing the observable object inside the view.
                                                                    
class Counter: ObservableObject {
    @Published var count = 0
}

struct MyView: View {
    @StateObject var counter = Counter() // Creates and owns the instance

    var body: some View {
        Text("Count: \(counter.count)")
        Button("Increment") {
            counter.count += 1
        }
    }
}
#Preview {
    MyView()
}
