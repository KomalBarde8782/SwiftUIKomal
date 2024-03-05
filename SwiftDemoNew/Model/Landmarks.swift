//
//  Landmarks.swift
//  listDemo
//
//  Created by CodeCat15 on 5/6/20.
//  Copyright © 2020 CodeCat15. All rights reserved.
//

import Foundation

struct Landmark : Decodable
{
    let landmarkId : Int
    let name, photo, description: String
}

struct City : Decodable
{
    let cityId: Int
    let name: String
    let landmarks: [Landmark]
}



//struct RoyalTVModel : Codable{
//    var featuredVideo : Video
//    var categories: [Category]
//    
//    enum CodingKeys : String,CodingKey {
//        case featuredVideo = "featured_video"
//        case categories
//    }
//    
//}
//
//
//struct Video: Codable {
//   // var id = UUID()
//    let name, thumbnail, title: String
//}
//
//
//struct Category: Codable,Identifiable{
//    var id = UUID()
//    let name: String
//    let videos: [Video]
//}
