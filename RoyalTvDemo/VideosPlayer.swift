//
//  VideosPlayer.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 27/09/23.
//

import AVKit
import SwiftUI
import UIKit

/// View used to reproduce Videos using `AVPlayer` using `AVPlayerViewController`
/// This is an implementation based on https://developer.apple.com/forums/thread/711360 to solve missing close button on iOS16 using `VideoPlayer` view
/// - Parameters:
///     - player: `AVPlayer?` instance used by `AVPlayerViewController`
///     - orientation: `UIDeviceOrientation` to change device transform
struct VideosPlayer: UIViewControllerRepresentable {
    let player: AVPlayer?
    let orientation: UIDeviceOrientation
        
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.beginAppearanceTransition(true, animated: false)
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        uiViewController.player = player
        uiViewController.view.transform = orientation.transform
    }
    
    static func dismantleUIViewController(_ uiViewController: AVPlayerViewController, coordinator: ()) {
        uiViewController.beginAppearanceTransition(false, animated: false)
    }
}

private extension UIDeviceOrientation {
    /// - Returns: `CGAffineTransform` according current `UIDeviceOrientation`
    var transform: CGAffineTransform {
        switch self {
        case .landscapeLeft:
            return .landscapeLeft
        case .landscapeRight:
            return .landscapeRight
        default:
            return .portrait
        }
    }
}

private extension CGAffineTransform {
    /// Value for portrait
    static let portrait = CGAffineTransform(a: 1.0, b: 0.0, c: 0.0, d: 1.0, tx: 0.0, ty: 0.0)
    
    /// Value for landscape left
    static let landscapeLeft = CGAffineTransform(rotationAngle: CGFloat(Double.pi / 2))
    
    /// Value for landscape right
    static let landscapeRight = CGAffineTransform(rotationAngle: -CGFloat(Double.pi / 2))
}
