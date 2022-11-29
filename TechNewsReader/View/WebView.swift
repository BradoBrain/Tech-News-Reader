//  Created by Artem Vinogradov

import WebKit
import SwiftUI
/**
 This is integration WebKit to SwiftUI with UIViewRepresentable.
 
 It contains two methods to make it possible
 ```
 func makeUIView(context: Context) -> WKWebView
 
 func updateUIView(_ webView: WKWebView, context: Context)
 ```
 */
struct WebView: UIViewRepresentable {
    let url: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        if let unwrappedURL = url {
            if let url = URL(string: unwrappedURL) {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
    }
}
