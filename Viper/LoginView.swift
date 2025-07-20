//
//  LoginView.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//

protocol LoginViewProtocol: AnyObject {
    func showLoginSuccess()
    func showLoginError(_ error: String)
}

class LoginView: UIViewController, LoginViewProtocol {
    var presenter: LoginPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Assume login button tap
        presenter.loginTapped(username: "user", password: "pass")
    }

    func showLoginSuccess() {
        print("Login Success")
    }

    func showLoginError(_ error: String) {
        print("Login Failed: \(error)")
    }
}
