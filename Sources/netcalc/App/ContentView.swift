import SwiftUI

/// Main content view for netcalc
/// Displays app title and version with Matrix-themed design
struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background
                MatrixTheme.backgroundDark
                    .ignoresSafeArea()

                // Content
                VStack(spacing: MatrixTheme.paddingLarge) {
                    // App title
                    Text("netcalc v1.0")
                        .font(MatrixTheme.titleFont)
                        .foregroundStyle(MatrixTheme.primaryGreen)

                    // Subtitle
                    Text("Clean Slate - Quality First")
                        .font(MatrixTheme.monoFont)
                        .foregroundStyle(MatrixTheme.primaryGreen.opacity(0.7))

                    Spacer()
                        .frame(height: MatrixTheme.paddingMedium)

                    // Coming soon message
                    VStack(spacing: MatrixTheme.paddingSmall) {
                        Text("Subnet Calculator")
                            .font(MatrixTheme.monoFont)
                            .foregroundStyle(MatrixTheme.primaryGreen.opacity(0.5))

                        Text("Network Designer")
                            .font(MatrixTheme.monoFont)
                            .foregroundStyle(MatrixTheme.primaryGreen.opacity(0.5))

                        Text("IP Range Tools")
                            .font(MatrixTheme.monoFont)
                            .foregroundStyle(MatrixTheme.primaryGreen.opacity(0.5))
                    }
                }
                .padding(MatrixTheme.paddingLarge)
            }
            .navigationTitle("netcalc")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
