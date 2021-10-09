import Foundation

public enum HbarUnit: UInt64 {
  case tinybar = 1
  case microbar = 100
  case millibar = 100000
  case hbar = 100_000_000
  case kilobar = 100_000_000_000
  case megabar = 100_000_000_000_000
  case gigabar = 100_000_000_000_000_000
}

extension HbarUnit {
  public func getSymbol() -> String {
    switch self {
    case .tinybar:
      return "tℏ"
    case .microbar:
      return "μℏ"
    case .millibar:
      return "mℏ"
    case .hbar:
      return "ℏ"
    case .kilobar:
      return "kℏ"
    case .megabar:
      return "Mℏ"
    case .gigabar:
      return "Gℏ"
    }
  }
}

extension HbarUnit: CustomStringConvertible, CustomDebugStringConvertible {
  public var description: String {
    switch self {
    case .tinybar:
      return "tinybar"
    case .microbar:
      return "microbar"
    case .millibar:
      return "millibar"
    case .hbar:
      return "hbar"
    case .kilobar:
      return "kilobar"
    case .megabar:
      return "megabar"
    case .gigabar:
      return "gigabar"
    }
  }

  public var debugDescription: String {
    description
  }
}
