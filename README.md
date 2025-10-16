# netcalc

**Modern subnet calculator and network designer for iOS**

Part of the LaClair Tech CLI tools suite - Professional networking utilities for network engineers, system administrators, and IT professionals.

![Status](https://img.shields.io/badge/status-clean%20rebuild-00FF41?style=flat-square)
![Platform](https://img.shields.io/badge/platform-iOS%2018.0%2B%20%7C%20macOS%2015.0%2B-lightgrey?style=flat-square)
![Swift](https://img.shields.io/badge/swift-6.0-orange?style=flat-square)
![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)

---

## Overview

netcalc is a production-quality iOS subnet calculator built with modern Swift 6.0 and SwiftUI. Designed for networking professionals who need fast, accurate subnet calculations and network design tools on the go.

**Status**: Clean rebuild - Quality first approach. This is a ground-up rewrite focusing on:
- Modern Swift 6.0 with strict concurrency
- 100% SwiftUI interface
- Test-driven development
- Accessibility-first design
- Matrix-inspired aesthetic

---

## Features (Planned)

### Core Subnet Calculator
- IPv4 CIDR calculations
- Subnet mask visualization
- Network/broadcast address calculation
- Usable host range determination
- Binary/decimal/hex representations

### Network Design Tools
- VLSM subnet design
- Supernet aggregation
- IP range overlap detection
- Network topology visualization

### Advanced Features
- IPv6 support
- Custom subnet schemes
- Export to CSV/JSON
- Dark mode (Matrix theme)
- iPad multitasking support

---

## Architecture

### Technology Stack
- **Language**: Swift 6.0 (strict concurrency enabled)
- **UI Framework**: 100% SwiftUI
- **Platforms**: iOS 18.0+, iPadOS 18.0+, macOS 15.0+
- **Bundle ID**: com.laclairtech.netcalc
- **Package Manager**: Swift Package Manager
- **Testing**: Swift Testing framework
- **Code Quality**: SwiftLint

### Design Philosophy
This project follows **quality over speed** principles:
1. **Test-First**: Write tests before implementation
2. **Accessibility-First**: WCAG AA compliance minimum
3. **Performance**: 60fps UI, sub-10ms calculations
4. **Clean Code**: Single Responsibility, clear intent
5. **Modern Swift**: Leverage Swift 6.0 concurrency features

### Project Structure
```
netcalc/
├── Sources/netcalc/
│   ├── App/                  # App entry point and main views
│   ├── Core/                 # Business logic and models
│   │   └── Models/           # IPv4Network, calculations
│   └── DesignSystem/         # Matrix theme and UI components
└── Tests/
    └── NetCalcTests/         # Comprehensive test suite
```

---

## Design System: Matrix Theme

netcalc features a distinctive Matrix-inspired aesthetic:

- **Primary**: `#00FF41` (neon green)
- **Background**: `#0D0208` (deep black)
- **Cards**: `#1A1A1D` (charcoal)
- **Typography**: Monospaced system fonts
- **Spacing**: 8pt/16pt/24pt grid system

This creates a professional, code-like interface perfect for technical users.

---

## Development

### Requirements
- Xcode 16.0+
- Swift 6.0+
- iOS 18.0+ / macOS 15.0+

### Building
```bash
# Clone repository
git clone https://github.com/plac9/netcalc.git
cd netcalc

# Build with Swift Package Manager
swift build

# Run tests
swift test

# Or open in Xcode
open Package.swift
```

### Code Quality
```bash
# Run SwiftLint
swiftlint

# Auto-fix violations
swiftlint --fix
```

---

## Roadmap

### Phase 1: Foundation (Current)
- [x] Project structure with SPM
- [x] Matrix design system
- [x] Core IPv4Network model
- [ ] Basic subnet calculations
- [ ] Initial UI implementation

### Phase 2: Core Features
- [ ] Complete subnet calculator
- [ ] Binary/hex representations
- [ ] VLSM designer
- [ ] Export functionality

### Phase 3: Polish
- [ ] IPv6 support
- [ ] iPad optimization
- [ ] macOS Catalyst refinement
- [ ] App Store submission

### Phase 4: Advanced
- [ ] Network topology visualization
- [ ] Custom subnet schemes
- [ ] Integration with network scanning tools
- [ ] API for automation

---

## Contributing

This is a personal project by LaClair Tech, but suggestions and feedback are welcome via GitHub Issues.

---

## License

MIT License - See LICENSE file for details

---

## About LaClair Tech

LaClair Tech builds professional developer tools and networking utilities. Part of our mission to provide high-quality, focused tools for technical professionals.

**Website**: [laclairtech.com](https://laclairtech.com)
**GitHub**: [@plac9](https://github.com/plac9)

---

## Related Projects

- **LANScanPro** - Network security and device discovery
- **SubnetCalculatorPro** - Advanced CIDR calculator
- **netutils** - CLI networking toolkit

---

**Built with quality, designed for professionals.**
