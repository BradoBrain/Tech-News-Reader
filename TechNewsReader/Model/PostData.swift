//  Created by Artem Vinogradov

import Foundation

/// Here is our DataModel to decode data with NetworkManager
struct PostData: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { objectID }
    let objectID: String
    let title: String
    let url: String?
    let author: String
    let points: Int
}
