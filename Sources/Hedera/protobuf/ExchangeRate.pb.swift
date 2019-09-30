// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ExchangeRate.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///  Values from these proto denotes habr and cents(USD) conversion 
struct Proto_ExchangeRate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// value which denote habar equivalent to cent
  var hbarEquiv: Int32 {
    get {return _storage._hbarEquiv}
    set {_uniqueStorage()._hbarEquiv = newValue}
  }

  /// value which denote cents (USD) equivalent to Hbar}
  var centEquiv: Int32 {
    get {return _storage._centEquiv}
    set {_uniqueStorage()._centEquiv = newValue}
  }

  /// expired time in seconds for this exchange rate
  var expirationTime: Proto_TimestampSeconds {
    get {return _storage._expirationTime ?? Proto_TimestampSeconds()}
    set {_uniqueStorage()._expirationTime = newValue}
  }
  /// Returns true if `expirationTime` has been explicitly set.
  var hasExpirationTime: Bool {return _storage._expirationTime != nil}
  /// Clears the value of `expirationTime`. Subsequent reads from it will return its default value.
  mutating func clearExpirationTime() {_uniqueStorage()._expirationTime = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Two sets of exchange rate 
struct Proto_ExchangeRateSet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Current rate of Exchange of Hbar to cents
  var currentRate: Proto_ExchangeRate {
    get {return _storage._currentRate ?? Proto_ExchangeRate()}
    set {_uniqueStorage()._currentRate = newValue}
  }
  /// Returns true if `currentRate` has been explicitly set.
  var hasCurrentRate: Bool {return _storage._currentRate != nil}
  /// Clears the value of `currentRate`. Subsequent reads from it will return its default value.
  mutating func clearCurrentRate() {_uniqueStorage()._currentRate = nil}

  /// Next rate exchange of Hbar to cents
  var nextRate: Proto_ExchangeRate {
    get {return _storage._nextRate ?? Proto_ExchangeRate()}
    set {_uniqueStorage()._nextRate = newValue}
  }
  /// Returns true if `nextRate` has been explicitly set.
  var hasNextRate: Bool {return _storage._nextRate != nil}
  /// Clears the value of `nextRate`. Subsequent reads from it will return its default value.
  mutating func clearNextRate() {_uniqueStorage()._nextRate = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_ExchangeRate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ExchangeRate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "hbarEquiv"),
    2: .same(proto: "centEquiv"),
    3: .same(proto: "expirationTime"),
  ]

  fileprivate class _StorageClass {
    var _hbarEquiv: Int32 = 0
    var _centEquiv: Int32 = 0
    var _expirationTime: Proto_TimestampSeconds? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _hbarEquiv = source._hbarEquiv
      _centEquiv = source._centEquiv
      _expirationTime = source._expirationTime
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._hbarEquiv)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._centEquiv)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._expirationTime)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._hbarEquiv != 0 {
        try visitor.visitSingularInt32Field(value: _storage._hbarEquiv, fieldNumber: 1)
      }
      if _storage._centEquiv != 0 {
        try visitor.visitSingularInt32Field(value: _storage._centEquiv, fieldNumber: 2)
      }
      if let v = _storage._expirationTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_ExchangeRate, rhs: Proto_ExchangeRate) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._hbarEquiv != rhs_storage._hbarEquiv {return false}
        if _storage._centEquiv != rhs_storage._centEquiv {return false}
        if _storage._expirationTime != rhs_storage._expirationTime {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto_ExchangeRateSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ExchangeRateSet"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "currentRate"),
    2: .same(proto: "nextRate"),
  ]

  fileprivate class _StorageClass {
    var _currentRate: Proto_ExchangeRate? = nil
    var _nextRate: Proto_ExchangeRate? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _currentRate = source._currentRate
      _nextRate = source._nextRate
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._currentRate)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._nextRate)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._currentRate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._nextRate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto_ExchangeRateSet, rhs: Proto_ExchangeRateSet) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._currentRate != rhs_storage._currentRate {return false}
        if _storage._nextRate != rhs_storage._nextRate {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
