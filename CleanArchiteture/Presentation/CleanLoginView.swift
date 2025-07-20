//
//  CleanLoginView.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//
import SwiftUI

struct CleanLoginView: View {
    @StateObject var viewModel: LoginViewModel

    var body: some View {
        VStack {
            Button("Login") {
                viewModel.login(username: "user", password: "pass")
            }
            if let error = viewModel.errorMessage {
                Text(error).foregroundColor(.red)
            }
        }
    }
}
