import Foundation

/// Represents an IPv4 network with CIDR notation
/// Core model for subnet calculations and network design
public struct IPv4Network: Identifiable, Codable, Hashable, Sendable {

    // MARK: - Properties

    /// Unique identifier for the network
    public let id: UUID

    /// IPv4 address in dotted decimal notation (e.g., "192.168.1.0")
    public let address: String

    /// CIDR prefix length (0-32)
    public let cidr: Int

    // MARK: - Initialization

    /// Initialize a new IPv4 network
    /// - Parameters:
    ///   - address: IPv4 address string
    ///   - cidr: CIDR prefix length (0-32)
    ///   - id: Optional UUID (auto-generated if not provided)
    public init(address: String, cidr: Int, id: UUID = UUID()) {
        self.id = id
        self.address = address
        self.cidr = cidr
    }

    // MARK: - Computed Properties (TODO)

    // TODO: Add subnet mask calculation
    // public var subnetMask: String { }

    // TODO: Add network address calculation
    // public var networkAddress: String { }

    // TODO: Add broadcast address calculation
    // public var broadcastAddress: String { }

    // TODO: Add first usable host calculation
    // public var firstUsableHost: String { }

    // TODO: Add last usable host calculation
    // public var lastUsableHost: String { }

    // TODO: Add total hosts calculation
    // public var totalHosts: Int { }

    // TODO: Add usable hosts calculation
    // public var usableHosts: Int { }

    // TODO: Add wildcard mask calculation
    // public var wildcardMask: String { }

    // MARK: - Validation (TODO)

    // TODO: Add IPv4 address validation
    // public var isValidAddress: Bool { }

    // TODO: Add CIDR validation
    // public var isValidCIDR: Bool { }
}
