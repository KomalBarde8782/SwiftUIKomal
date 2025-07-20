//
//  LoginRouter.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//

protocol LoginRouterProtocol {
    static func createLoginModule() -> UIViewController
}

class LoginRouter: LoginRouterProtocol {
    static func createLoginModule() -> UIViewController {
        let view = LoginView()
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let router = LoginRouter()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter

        return view
    }
}
