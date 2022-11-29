//  Created by Artem Vinogradov

import SwiftUI

/**
 ContentView contains list of all stories that we are getting from a front/home page of https://hn.algolia.com right now
 with API call to  http://hn.algolia.com/api/v1/search?tags=front_page
 
 It shows us author name, title of artical and number of points.
 
 Also we have navigation link to DetailView for each cell in list to be able to see WebView.
 */

struct ContentView: View {
    @StateObject var vm = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(vm.posts, id: \.id) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("author: \(post.author)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            Text(post.title)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Text(String(post.points))
                            .frame(width: 40)
                    }
                }
            } .listStyle(.plain)
                .navigationTitle("Tech News")
        }
        .onAppear {
            vm.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
