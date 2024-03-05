//
//  VideosContentResponse.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 14/09/23.
//

import Foundation

/// VideosContentResponse
///
/// Data struct to parse Videos service content response
struct HomeVideosContentResponse: Codable, Equatable {
    /// Main Metadata feature
    let featuredVideo: HomeVideosCategoryMetadata
    
    /// Categories List to show
    let categories: [HomeVideosCategory]
}
