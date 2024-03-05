//
//  VideosCategoryMetadata.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 20/09/23.
//

import Foundation

/// VideosCategoryMetadata
///
/// Data struct to parse each video items within catalog
struct HomeVideosCategoryMetadata: Codable, Equatable {
    /// Metadata's title
    let title: String
    
    /// Metadata's string url
    let videoUrl: String
    
    /// Metadata's asset image string url
    let asset: String
}

extension HomeVideosCategoryMetadata {
    /// Metadata's URL
    var videoURL: URL? {
        return URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/\(videoUrl)")
    }
    
    /// Metadata's Asset URL
    var assetURL: URL? {
        return URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/\(asset)")
    }
}
