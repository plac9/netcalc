import SwiftUI

/// Main entry point for the netcalc application
/// Subnet calculator and network designer for iOS/iPadOS/macOS
#if os(iOS)
@main
struct NetCalcApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
#endif
