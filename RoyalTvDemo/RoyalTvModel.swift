

import Foundation
struct RoyalTvModel : Codable {
	let featured_video : Featured_video?
	let categories : [Categories]?

	enum CodingKeys: String, CodingKey {

		case featured_video = "featured_video"
		case categories = "categories"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		featured_video = try values.decodeIfPresent(Featured_video.self, forKey: .featured_video)
		categories = try values.decodeIfPresent([Categories].self, forKey: .categories)
	}

}
