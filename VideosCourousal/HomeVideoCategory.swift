//
//  VideoCategory.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 11/09/23.
//

import Foundation

/// VideoCategory
///
/// This is a data struct to hold any section within the VideosView Catalog
struct HomeVideoCategory: Identifiable {
    /// Unique Identifier for the Section
    var id: String { return title }
    
    /// Section's name
    let title: String
    
    /// Array of `VideoCategoryItem` to display in the Catalog Gallery
    let items: [HomeVideoCategoryItem]
    
    /// Initialices `VideoCategory`
    /// - Parameters:
    ///     - title: `String`
    ///     - items:  Array of `VideoCategoryItem`
    init(title: String,
         items: [HomeVideoCategoryItem]) {
        self.title = title
        self.items = items
    }
    
    /// Initialices `VideoCategory` given a category  from service response
    /// - Parameters:
    ///     - category: `VideosCategory` service response data
    init(category: HomeVideosCategory) {
        self.title = category.categoryName
        self.items = category.metadata.compactMap { HomeVideoCategoryItem(metadata: $0) }
    }
}

//extension VideoCategory {
//    /// Provides an array of default empty categories while the service is being called
//    static func emptyPlaceholderCategories() -> [VideoCategory] {
//        return [
//            .init(title: "", items: [.init(), .init()]),
//            .init(title: "", items: [.init(), .init()]),
//            .init(title: "", items: [.init(), .init()]),
//            .init(title: "", items: [.init(), .init()]),
//            .init(title: "", items: [.init(), .init()])
//        ]
//    }
//}
