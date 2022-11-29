//  Created by Artem Vinogradov

import Foundation

///  NetworkManager has  method to get and decode data from API and @Published property to connect the data to ContentView
class NetworkManager: ObservableObject {
    @Published var posts: [Post] = []
    
    func fetch() {
        guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if error == nil {
                let decoder = JSONDecoder()
                guard let data = data else { return }
                do {
                    let result = try decoder.decode(PostData.self, from: data)
                    DispatchQueue.main.async {
                        self.posts = result.hits
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
        task.resume()
    }
}
