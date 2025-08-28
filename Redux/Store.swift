//
//  Store.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 24/07/25.
//
import SwiftUI


class Store: ObservableObject {
    @Published private(set) var state: AppState
    private let reducer: (AppState, CounterAction) -> AppState

    init(initialState: AppState, reducer: @escaping (AppState, CounterAction) -> AppState) {
        self.state = initialState
        self.reducer = reducer
    }

    func dispatch(action: CounterAction) {
        state = reducer(state, action)
    }
}
