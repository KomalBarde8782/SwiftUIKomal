//
//  CleanEntiry.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 17/07/25.
//

struct CleanUser {
    let username: String
    let password: String
}

//
//| Layer            | Responsibility              | Example                          |
//| ---------------- | --------------------------- | -------------------------------- |
//| **Presentation** | UI, ViewModels              | `LoginViewModel`                 |
//| **Domain**       | Business logic              | `LoginUserUseCase.swift`         |
//| **Data**         | Repositories, data fetching | `UserRepositoryImpl.swift`       |
//| **Entities**     | Core models/entities        | `User.swift`, `LoginError.swift` |
