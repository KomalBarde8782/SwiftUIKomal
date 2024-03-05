//
//  VideosCategory.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 20/09/23.
//

import Foundation

/// VideosCategory
///
/// Data struct to parse Videos Category within catalog
struct HomeVideosCategory: Codable, Equatable {
    /// Category's name
    let categoryName: String
    
    /// Category's videos
    let metadata: [HomeVideosCategoryMetadata]
}
