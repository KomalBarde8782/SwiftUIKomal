//
//  LoginInteractor.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//

protocol LoginInteractorProtocol {
    func login(username: String, password: String)
}

protocol LoginInteractorOutputProtocol: AnyObject {
    func loginSucceeded()
    func loginFailed(error: String)
}

class LoginInteractor: LoginInteractorProtocol {
    weak var output: LoginInteractorOutputProtocol?

    func login(username: String, password: String) {
        if username == "user" && password == "pass" {
            output?.loginSucceeded()
        } else {
            output?.loginFailed(error: "Invalid credentials")
        }
    }
}
