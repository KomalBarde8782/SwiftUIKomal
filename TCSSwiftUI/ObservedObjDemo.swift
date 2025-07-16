//
//  ObservedObjDemo.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 10/07/25.
//

//🔹 @ObservedObject – Passed and Watched
//Used when the observable object is created outside and passed into the view.
//
//The view observes changes but does not own the object.
//
//The object is not recreated when the view is re-rendered, since it’s passed in.
//
//✅ Use when:
//You're passing an existing observable object into the view.

struct MyChildView: View {
    @ObservedObject var counter: Counter // Uses an existing instance

    var body: some View {
        Text("Count: \(counter.count)")
        Button("Increment") {
            counter.count += 1
        }
    }
}

// Usage in parent
MyChildView(counter: sharedCounter)
#Preview {
    MyChildView(counter: sharedCounter)
}
