////
////  AppState.swift
////  SwiftDemoNew
////
////  Created by Komal Markande on 28/08/25.
////
//
//
//import SwiftUI
//import Combine
//
//// MARK: - Redux Core
//
///// App State
//struct AppState {
//    var counter: Int = 0
//}
//
///// Actions
//enum CounterAction {
//    case increment
//    case decrement
//}
//
///// Reducer
//func counterReducer(state: inout AppState, action: CounterAction) {
//    switch action {
//    case .increment:
//        state.counter += 1
//    case .decrement:
//        state.counter -= 1
//    }
//}
//
///// Store
//final class Store: ObservableObject {
//    @Published private(set) var state: AppState
//    
//    init(initialState: AppState) {
//        self.state = initialState
//    }
//    
//    func dispatch(_ action: CounterAction) {
//        counterReducer(state: &state, action: action)
//    }
//}
//
//// MARK: - SwiftUI View
//
//struct ReduxContentView: View {
//    @ObservedObject var store: Store
//    
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Counter: \(store.state.counter)")
//                .font(.largeTitle)
//                .padding()
//            
//            HStack(spacing: 30) {
//                Button(action: { store.dispatch(.decrement) }) {
//                    Text("-")
//                        .font(.largeTitle)
//                        .frame(width: 60, height: 60)
//                        .background(Color.red.opacity(0.7))
//                        .foregroundColor(.white)
//                        .clipShape(Circle())
//                }
//                
//                Button(action: { store.dispatch(.increment) }) {
//                    Text("+")
//                        .font(.largeTitle)
//                        .frame(width: 60, height: 60)
//                        .background(Color.green.opacity(0.7))
//                        .foregroundColor(.white)
//                        .clipShape(Circle())
//                }
//            }
//        }
//    }
////}
