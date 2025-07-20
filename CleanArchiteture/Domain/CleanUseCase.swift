//
//  CleanUseCase.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//
protocol LoginUseCase {
    func execute(username: String, password: String, completion: @escaping (Result<Void, Error>) -> Void)
}

class LoginUseCaseImpl: LoginUseCase {
    let repository: AuthRepository

    init(repository: AuthRepository) {
        self.repository = repository
    }

    func execute(username: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        repository.login(username: username, password: password, completion: completion)
    }
}

