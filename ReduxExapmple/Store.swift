//
//  Store.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 28/08/25.
//

import Foundation

//typealias Reducer = (_ state: RState, _ action: Action) -> RState
//
//struct RState {
//    var counter: Int = 0
//}
//
//protocol Action {}
//
//struct IncrementAction: Action{}
//struct DecrementAction: Action{}
//struct AddAcion: Action {
//    let value: Int
//}
//
//
//func reducer(_ state: RState, _ action: Action) -> RState {
//    var state = state
//    switch action {
//    case let incrementAction as IncrementAction:
//        state.counter += 1
//    case let decrementAction as DecrementAction:
//        state.counter -= 1
//    case let addAction as AddAcion:
//        state.counter += addAction.value
//    default:
//        break
//    }
//    return state
//}


/// State
struct RState {
    var counter: Int = 0
}

/// Actions (all in one place)
enum Action {
    case increment
    case decrement
    case add(Int)
}

/// Reducer
func reducer(_ state: RState, _ action: Action) -> RState {
    var state = state
    switch action {
    case .increment:
        state.counter += 1
    case .decrement:
        state.counter -= 1
    case .add(let value):
        state.counter += value
    }
    return state
}



/// Store
final class Store: ObservableObject {
    @Published var state: RState
    
    private let reducer: (RState, Action) -> RState
    
    init(state: RState, reducer: @escaping (RState, Action) -> RState) {
        self.state = state
        self.reducer = reducer
    }
    
        func dispatch(_ action: Action) {
            DispatchQueue.main.async {
                self.state = self.reducer(self.state, action)
            }
            // middlewar ehandled here
        }
}
