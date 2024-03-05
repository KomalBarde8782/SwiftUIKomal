

import Foundation
struct Videos : Codable,Identifiable {
    var id = UUID()
	let name : String?
	let thumbnail : String?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case thumbnail = "thumbnail"
		case title = "title"
	}

//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		name = try values.decodeIfPresent(String.self, forKey: .name)
//		thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
//		title = try values.decodeIfPresent(String.self, forKey: .title)
//	}

}
