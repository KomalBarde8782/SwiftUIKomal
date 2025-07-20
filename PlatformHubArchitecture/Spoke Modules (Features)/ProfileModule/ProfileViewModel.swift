//
//  ProfileViewModel.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profileInfo: String = "Loading..."

    func loadProfile() {
        UserService.shared.fetchUserProfile { [weak self] info in
            DispatchQueue.main.async {
                self?.profileInfo = info
            }
        }
    }
}
