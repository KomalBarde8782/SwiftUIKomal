//
//  CounterAction.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 24/07/25.
//


enum CounterAction {
    case increment
    case decrement
}

func counterReducer(state: AppState, action: CounterAction) -> AppState {
    var newState = state
    switch action {
    case .increment:
        newState.counter += 1
    case .decrement:
        newState.counter -= 1
    }
    return newState
}
