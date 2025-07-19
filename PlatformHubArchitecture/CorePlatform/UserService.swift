//
//  UserService.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//

// MARK: - CorePlatform/UserService.swift

final class UserService {
    static let shared = UserService()

    private init() {}

    func fetchUserProfile(completion: @escaping (String) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion("👤 John Doe - iOS Developer")
        }
    }
}
