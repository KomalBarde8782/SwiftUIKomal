//
//  CounterView.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 24/07/25.
//


import SwiftUI

struct CounterView: View {
    @ObservedObject var store: Store

    var body: some View {
        VStack(spacing: 20) {
            Text("Count: \(store.state.counter)")
                .font(.largeTitle)

            HStack(spacing: 40) {
                Button("➖") {
                    store.dispatch(action: .decrement)
                }
                .font(.largeTitle)

                Button("➕") {
                    store.dispatch(action: .increment)
                }
                .font(.largeTitle)
            }
        }
        .padding()
    }
}
