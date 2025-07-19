//
//  Profile.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 19/07/25.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.profileInfo)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
        }
        .onAppear {
            viewModel.loadProfile()
        }
        .navigationTitle("Profile")
    }
}
