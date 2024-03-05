//
//  VideosServices.swift
//  TV
//
//  Created by Rodrigo Alejandro Velazquez Alcantara on 14/09/23.
//

import Foundation

/// VideosServices
///
/// Class to fetch Videos Content
final class HomeVideosServices {

    /// Call to get all the content for videos.
    /// - Returns:`VideosServiceContentResponse` object wrapped by `ServiceReponse`
    /// - Throws: A `ServicesError` depending on the status code of the request or failure of.
    func getContent<T: Codable>() async throws -> T {
         let url = Bundle(for: HomeVideosServices.self).url(forResource: "MockVideosContent",
                                                             withExtension: "json")
        
        
        let data = try Data(contentsOf: url!)
        
        return try JSONDecoder().decode(T.self, from: data)
    }
}
