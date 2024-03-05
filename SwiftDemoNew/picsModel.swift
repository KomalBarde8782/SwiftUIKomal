//
//  picsModel.swift
//  SwiftUiTest
//
//  Created by Komal Barde on 11/08/23.
//

import Foundation
struct PicsModel : Codable,Identifiable{
    var id : String?
    var author : String?
    var downloadUrl : String?
    
    enum CodingKeys : String,CodingKey {
        case id,author
         case downloadUrl = "download_url"
    }
    
}
