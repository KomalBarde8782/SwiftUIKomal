//
//  ContentView.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 22/07/25.
//


import SwiftUI

struct LocalizedContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("welcome_message") // Localized greeting
            
            VStack(alignment: .leading, spacing: 10) {
                Text("support_label") // Localized support email
                    .foregroundColor(.blue)
                
                Text("currency_label") // Localized currency
                    .foregroundColor(.green)
            }
            .padding()
        }
        .padding()
    }
}
