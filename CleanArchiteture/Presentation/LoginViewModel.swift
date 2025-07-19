//
//  LoginViewModel.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//


//https://chatgpt.com/share/687901df-af90-8012-bf48-c8e972db2dee

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var errorMessage: String?
    let loginUseCase: LoginUseCase

    init(loginUseCase: LoginUseCase) {
        self.loginUseCase = loginUseCase
    }

    func login(username: String, password: String) {
        loginUseCase.execute(username: username, password: password) { result in
            DispatchQueue.main.async {
                switch result {
                case .success:
                    print("in success")
                    self.errorMessage = nil
                case .failure(let error):
                    self.errorMessage = error.localizedDescription
                }
            }
        }
    }
}
