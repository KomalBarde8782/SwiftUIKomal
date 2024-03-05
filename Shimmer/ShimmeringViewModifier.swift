//
//  ShimmeringViewModifier.swift
//  Components
//
//  Created by Carlos Alejandro Martinez Vargas on 12/03/23.
//

import SwiftUI

/// Abstract:
/// View modifier that applies a shimmering effect to the current view
struct ShimmeringViewModifier: ViewModifier {
    let viewModel: ShimmeringViewModel

    func body(content: Content) -> some View {
        content.overlay {
            if viewModel.isEnabled {
                ShimmeringView(viewModel: viewModel).mask(content)
            }
        }.clipShape(RoundedRectangle(cornerRadius: 5))
        .redacted(reason: viewModel.isPlaceholder ? .placeholder : [])
    }
}
