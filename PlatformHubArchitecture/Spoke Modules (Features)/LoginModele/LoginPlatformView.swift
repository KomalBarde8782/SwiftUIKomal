//
//  LoginPlatformView.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//

// MARK: - LoginModule/LoginView.swift

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginPlatformViewModel()

    var body: some View {
        VStack(spacing: 20) {
            TextField("Username", text: $viewModel.username)
                .textFieldStyle(.roundedBorder)
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(.roundedBorder)
            Button("Login") {
                viewModel.performLogin()
            }
            .padding()
            Text(viewModel.loginStatus ?? "")
                .foregroundColor(.blue)
        }
        .padding()
    }
}
