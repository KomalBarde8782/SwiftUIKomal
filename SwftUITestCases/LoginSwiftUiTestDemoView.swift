//
//  LoginView.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//


import SwiftUI

struct LoginSwiftUiTestDemoView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    @State private var showAlert = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Username", text: $username)
                    .accessibilityIdentifier("usernameField")
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                SecureField("Password", text: $password)
                    .accessibilityIdentifier("passwordField")
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Login") {
                    if username == "admin" && password == "password" {
                        isLoggedIn = true
                    } else {
                        showAlert = true
                    }
                }
                .accessibilityIdentifier("loginButton")
                .padding()

                NavigationLink(destination: Text("Welcome, \(username)!"), isActive: $isLoggedIn) {
                    EmptyView()
                }
            }
            .navigationTitle("Login")
            .alert("Invalid Credentials", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            }
        }
    }
}
