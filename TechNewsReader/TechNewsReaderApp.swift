//  Created by Artem Vinogradov

import SwiftUI

@main
struct TechNewsReaderApp: App { // There is a problem with Xcode 14 and iOS 16 + WebView here (More about: https://developer.apple.com/forums/thread/712074)
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
