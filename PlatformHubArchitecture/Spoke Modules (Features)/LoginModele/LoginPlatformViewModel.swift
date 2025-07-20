//
//  LoginPlatformViewModel.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//

import Foundation
import Combine

class LoginPlatformViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var loginStatus: String?

    func performLogin() {
        AuthService.shared.login(username: username, password: password) { [weak self] success in
            DispatchQueue.main.async {
                self?.loginStatus = success ? "Login Successful" : "Invalid Credentials"
            }
        }
    }
}
