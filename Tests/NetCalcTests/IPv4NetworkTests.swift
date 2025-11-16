import XCTest
@testable import netcalc

/// Test suite for IPv4Network model using XCTest
final class IPv4NetworkTests: XCTestCase {
    func testInitializationCreatesValidInstance() {
        // Given
        let address = "192.168.1.0"
        let cidr = 24

        // When
        let network = IPv4Network(address: address, cidr: cidr)

        // Then
        XCTAssertEqual(network.address, address)
        XCTAssertEqual(network.cidr, cidr)
        XCTAssertNotEqual(network.id, UUID(), "Each IPv4Network should receive a unique identifier by default.")
    }

    func testCustomUUIDIsPreserved() {
        // Given
        let customID = UUID()
        let address = "10.0.0.0"
        let cidr = 8

        // When
        let network = IPv4Network(address: address, cidr: cidr, id: customID)

        // Then
        XCTAssertEqual(network.id, customID)
    }

    // Placeholder tests for future IPv4 network calculations can be added here.
}
