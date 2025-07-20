//
//  LoginPresenter.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//

protocol LoginPresenterProtocol {
    func loginTapped(username: String, password: String)
}

class LoginPresenter: LoginPresenterProtocol {
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorProtocol?
    var router: LoginRouterProtocol?

    func loginTapped(username: String, password: String) {
        interactor?.login(username: username, password: password)
    }
}

extension LoginPresenter: LoginInteractorOutputProtocol {
    func loginSucceeded() {
        view?.showLoginSuccess()
    }

    func loginFailed(error: String) {
        view?.showLoginError(error)
    }
}
