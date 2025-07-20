//
//  AuthRepository.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//

import Foundation

//Contains busines logic
protocol AuthRepository {
    func login(username: String, password: String, completion: @escaping (Result<Void, Error>) -> Void)
}

class AuthRepositoryImpl: AuthRepository {
    func login(username: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        if username == "user" && password == "pass" {
            completion(.success(()))
        } else {
            completion(.failure(NSError(domain: "", code: 1, userInfo: [NSLocalizedDescriptionKey: "Login failed"])))
        }
    }
}
