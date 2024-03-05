//
//  ShimmeringViewModel.swift
//  Components
//
//  Created by Carlos Alejandro Martinez Vargas on 12/03/23.
//

//import SwiftUI
//
//
///// Abstract:
///// Represents the configuration for the shimmering effect
//public struct ShimmeringViewModel {
//
//    /// A color gradient represented as an array of color stops, each having a parametric location value
//    let gradient: Gradient
//
//    /// background color of the shimmer
//    let backgroundColor: Color
//
//    /// corner radius of the shimmer background
//    let cornerRadius: CGFloat
//
//    /// Starting point for the shimmering effect
//    let initialLocation: (start: UnitPoint, end: UnitPoint)
//
//    /// Final point for the shimmering effect
//    let finalLocation: (start: UnitPoint, end: UnitPoint)
//
//    /// Time that will take for the shimmering effect to complete
//    let duration: TimeInterval
//
//    /// Opacity to reveal content behind the shimmering effect
//    let opacity: Double
//
//    /// Boolean to determine whether or not the shimmer is using a placeholder effect
//    let isPlaceholder: Bool
//
//    /// Boolean to determine whether or not the shimmer is enabled
//    let isEnabled: Bool
//
//    public init(gradient: Gradient = Gradient(stops: [.init(color: .black, location: 0),
//                                                      .init(color: .black, location: 0.3),
//                                                      .init(color: .white, location: 0.4),
//                                                      .init(color: .white, location: 0.5),
//                                                      .init(color: .black, location: 0.6),
//                                                      .init(color: .black, location: 1)]),
//                backgroundColor: Color = .clear,
//                cornerRadius: CGFloat = 0.0,
//                initialLocation: (start: UnitPoint, end: UnitPoint) = (start: UnitPoint(x: -1, y: 0.5), end: .leading),
//                finalLocation: (start: UnitPoint, end: UnitPoint) = (start: .trailing, end: UnitPoint(x: 2, y: 0.5)),
//                duration: TimeInterval = 2,
//                opacity: Double = 1,
//                isPlaceholder: Bool = false,
//                isEnabled: Bool = true) {
//        self.gradient = gradient
//        self.backgroundColor = backgroundColor
//        self.cornerRadius = cornerRadius
//        self.initialLocation = initialLocation
//        self.finalLocation = finalLocation
//        self.duration = duration
//        self.opacity = opacity
//        self.isPlaceholder = isPlaceholder
//        self.isEnabled = isEnabled
//    }
//}



//code


//
//  ShimmeringViewModel.swift
//  Components
//
//  Created by Carlos Alejandro Martinez Vargas on 12/03/23.
//

import SwiftUI

/// Abstract:
/// Represents the configuration for the shimmering effect
public struct ShimmeringViewModel {
    
    /// A color gradient represented as an array of color stops, each having a parametric location value
    let gradient: Gradient
    
    /// Starting point for the shimmering effect
    let initialLocation: (start: UnitPoint, end: UnitPoint)
    
    /// Final point for the shimmering effect
    let finalLocation: (start: UnitPoint, end: UnitPoint)
    
    /// Time that will take for the shimmering effect to complete
    let duration: TimeInterval
    
    /// Opacity to reveal content behind the shimmering effect
    let opacity: Double
    
    /// Boolean to determine whether or not the shimmer is using a placeholder effect
    let isPlaceholder: Bool
    
    /// Boolean to determine whether or not the shimmer is enabled
    let isEnabled: Bool
    
    public init(gradient: Gradient = Gradient(stops: [.init(color: .black, location: 0),
                                                      .init(color: .black, location: 0.3),
                                                      .init(color: .white, location: 0.4),
                                                      .init(color: .white, location: 0.5),
                                                      .init(color: .black, location: 0.6),
                                                      .init(color: .black, location: 1)]),
                initialLocation: (start: UnitPoint, end: UnitPoint) = (start: UnitPoint(x: -1, y: 0.5), end: .leading),
                finalLocation: (start: UnitPoint, end: UnitPoint) = (start: .trailing, end: UnitPoint(x: 2, y: 0.5)),
                duration: TimeInterval = 2,
                opacity: Double = 1,
                isPlaceholder: Bool = false,
                isEnabled: Bool = true) {
        self.gradient = gradient
        self.initialLocation = initialLocation
        self.finalLocation = finalLocation
        self.duration = duration
        self.opacity = opacity
        self.isPlaceholder = isPlaceholder
        self.isEnabled = isEnabled
    }
}
