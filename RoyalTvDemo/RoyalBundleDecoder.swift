//
//  RoyalBundleDecoder.swift
//  SwiftDemoNew
//
//  Created by Komal Barde on 05/09/23.
//

import Foundation
struct BundleDecoderRoyal
{
    static func decodeLandmarkBundleJson() -> RoyalTvModel {
        let royalTvJson = Bundle.main.path(forResource: "RoyalTv", ofType: "json")
        let royalTvData = try! Data(contentsOf: URL(fileURLWithPath: royalTvJson!), options: .alwaysMapped)
        return try! JSONDecoder().decode(RoyalTvModel.self, from: royalTvData)
    }
}
