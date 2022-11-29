//  Created by Artem Vinogradov

import SwiftUI
import WebKit

/// This  reusable View to show us every WebView we have with url from API response
struct DetailView: View {
    @State var url: String?
    
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.apple.com")
            .navigationBarTitleDisplayMode(.inline)
    }
}
