# Tech-News-Reader

News reader on SwiftUI.
Created to figure out how WebKit works. 

All materials is getting from https://hn.algolia.com/api.

## Structure of project:

ContentView - place to show list of articles with links to details view.

DetailView - reusable view to show details in WebView format.

WebView - is integration WebKit to SwiftUI with UIViewRepresentable and two its methods
 ```
 func makeUIView(context: Context) -> WKWebView
 
 func updateUIView(_ webView: WKWebView, context: Context)
 ```
 
 PostData - DataModel.
 
 NetworkManager - with method to get and decode data from API and @Published property to connect the data to ContentView.



## Screenshots

<p float="left">
<img src="https://user-images.githubusercontent.com/97796448/204615213-11f0abd0-feff-412d-b842-95efd3f5a92f.PNG" width="390" height="844">
<img src="https://user-images.githubusercontent.com/97796448/204615667-0ffd3834-4f51-4afb-abae-69567de8a8bc.PNG" width="390" height="844">
<img src="https://user-images.githubusercontent.com/97796448/204615655-7011a80d-1ed5-44f8-ac4c-454d0f53948d.PNG" width="390" height="844">
<img src="https://user-images.githubusercontent.com/97796448/204615641-701f8ef3-3ae0-4b07-a967-0ba3e42e0268.PNG" width="390" height="844">
</p>
