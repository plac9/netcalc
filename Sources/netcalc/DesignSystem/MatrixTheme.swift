import SwiftUI

/// Matrix-inspired design system for netcalc
/// Provides consistent colors, typography, and spacing across the app
public struct MatrixTheme {

    // MARK: - Colors

    /// Primary neon green (#00FF41) - Matrix signature color
    public static let primaryGreen = Color(hex: "00FF41")

    /// Background dark (#0D0208) - Deep black with subtle warmth
    public static let backgroundDark = Color(hex: "0D0208")

    /// Card background (#1A1A1D) - Charcoal for elevated surfaces
    public static let cardBackground = Color(hex: "1A1A1D")

    // MARK: - Typography

    /// Monospaced system font for code-like aesthetic
    public static let monoFont = Font.system(.body, design: .monospaced)

    /// Title font - larger monospaced
    public static let titleFont = Font.system(.title, design: .monospaced, weight: .bold)

    /// Caption font - smaller monospaced
    public static let captionFont = Font.system(.caption, design: .monospaced)

    // MARK: - Spacing

    /// Small padding - 8pt
    public static let paddingSmall: CGFloat = 8

    /// Medium padding - 16pt
    public static let paddingMedium: CGFloat = 16

    /// Large padding - 24pt
    public static let paddingLarge: CGFloat = 24

    // MARK: - Corner Radius

    /// Standard corner radius for cards and buttons
    public static let cornerRadius: CGFloat = 8
}

// MARK: - Color Extension for Hex Support

extension Color {
    /// Initialize Color from hex string
    /// - Parameter hex: Hex string (e.g., "00FF41" or "#00FF41")
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
