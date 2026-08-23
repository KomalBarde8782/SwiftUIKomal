//
//  HSBCReduxDemoContent.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 28/08/25.
//

import SwiftUI

struct HSBCReduxDemoContent: View {
    @EnvironmentObject var store: Store
    
    struct Props {
        let counter: Int
        let onIncrement : () -> Void
        let onDecrement: () -> Void
        let addAction: (Int) -> Void
    }
    
    private func map(state: RState) -> Props {
        Props(counter: state.counter) {
            store.dispatch(.increment)
        } onDecrement: {
            store.dispatch(.decrement)
        } addAction: { val in
            store.dispatch(.add(val))
        }
    }
    
    var body: some View {
       let props = self.map(state: store.state)
        VStack{
            Text("\(store.state.counter)")
                .padding()
            Button("Increment"){
              //  props.onIncrement()
                store.dispatch(.increment)
            }
            Button("Decrement"){
              //  props.onDecrement()
                store.dispatch(.decrement)
            }
           Button("Add"){
              // props.addAction(10)
               store.dispatch(.add(10))
            }
        }
    }
}

#Preview {
    let store = Store(state: .init(counter: 0), reducer: reducer)
    HSBCReduxDemoContent()
        .environmentObject(store)
}
