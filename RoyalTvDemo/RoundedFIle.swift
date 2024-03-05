//
//  RoundedFIle.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 26/10/23.
//

import Foundation
import SwiftUI

/// A custom view modifier that adds a rounded background with a shadow to a view.
struct RoundedBackgroundModifier: ViewModifier {
    
    // Modifies the view's body by adding a rounded background with a shadow.
    func body(content: Content) -> some View {
        content.background(
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.white)
                .shadow(color: Color.black.opacity(0.08), radius: 12, x: 0, y: 2)
        )
    }
}


extension View {
    
    /// Returns a modified view with a rounded background.
    func roundedBackground() -> some View {
        modifier(RoundedBackgroundModifier())
    }
}



struct NewRoundedBackgroundModifier: ViewModifier {
    
    // Modifies the view's body by adding a rounded background with a shadow.
    func body(content: Content) -> some View {
        content.background(
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.black)
                .shadow(color: Color.black.opacity(0.08), radius: 12, x: 0, y: 2)
        )
    }
}


extension View {
    
    /// Returns a modified view with a rounded background.
    func newroundedBackground() -> some View {
        modifier(NewRoundedBackgroundModifier())
    }
}
