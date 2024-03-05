//
//  VideoCategoryItem.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 11/09/23.
//

import Foundation
import SwiftUI

/// VideoCategoryItem
///
/// This is a data struct to hold every Video Item inside the Videos Catalog Gallery
struct VideoCategoryItem: Identifiable {
    /// Unique identifier for the item
    let id: UUID = .init()

    /// Item's name
    let title: String

    /// Item's Asset image URL
    let image: URL?

    /// Resource URL
    let video: URL?

    public var isRefreshing: Bool = true

    var refreshShimmerViewModel: ShimmeringViewModel {
        .init(
            gradient: Gradient(stops: [
                .init(color: .white, location: 0),
                .init(color: .white.opacity(0.2), location: 0.3),
                .init(color: .white.opacity(0.08), location: 0.7),
                .init(color: .white, location: 1)
            ]),
            duration: 1,
            opacity: 1,
            isPlaceholder: isRefreshing,
            isEnabled: isRefreshing
        )
    }

}

struct HomeVideoCategoryItem: Identifiable {
    /// Unique identifier for the item
    let id: UUID = .init()
    
    /// Item's name
    let title: String
    
    /// Item's Asset image URL
    let image: URL?
    
    /// Resource URL
    let video: URL?
    
    /// Initialices VideoCategoryItem
    /// - Parameters:
    ///     - title: `String`
    ///     - image: `URL?`
    ///     - video: `URL?`
    init(title: String,
         image: URL?,
         video: URL?) {
        self.title = title
        self.image = image
        self.video = video
    }
    
    /// Initialices VideoCategoryItem given a metadata element from service response
    /// - Parameters:
    ///     - metadata: `VideosCategoryMetadata` service response data
    init(metadata: HomeVideosCategoryMetadata) {
        self.title = metadata.title
        self.image = metadata.assetURL
        self.video = metadata.videoURL
    }
    
    
        public var isRefreshing: Bool = true
    
        var refreshShimmerViewModel: ShimmeringViewModel {
            .init(
                gradient: Gradient(stops: [
                    .init(color: .white, location: 0),
                    .init(color: .white.opacity(0.2), location: 0.3),
                    .init(color: .white.opacity(0.08), location: 0.7),
                    .init(color: .white, location: 1)
                ]),
                duration: 1,
                opacity: 1,
                isPlaceholder: isRefreshing,
                isEnabled: isRefreshing
            )
        }
}
