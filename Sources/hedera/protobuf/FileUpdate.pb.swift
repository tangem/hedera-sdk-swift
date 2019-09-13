// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: FileUpdate.proto
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

/// Modify some of the metadata for a file. Any null field is ignored (left unchanged). Any field that is null is left unchanged. If contents is non-null, then the file's contents will be replaced with the given bytes. This transaction must be signed by all the keys for that file. If the transaction is modifying the keys field, then it must be signed by all the keys in both the old list and the new list. 
///
/// If a file was created without ANY keys in the keys field, ONLY the expirationTime of the file can be changed using this call. The file contents or its keys cannot be changed.
public struct Proto_FileUpdateTransactionBody {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The file ID of the file to update
  public var fileID: Proto_FileID {
    get {return _storage._fileID ?? Proto_FileID()}
    set {_uniqueStorage()._fileID = newValue}
  }
  /// Returns true if `fileID` has been explicitly set.
  public var hasFileID: Bool {return _storage._fileID != nil}
  /// Clears the value of `fileID`. Subsequent reads from it will return its default value.
  public mutating func clearFileID() {_uniqueStorage()._fileID = nil}

  /// The new time at which it should expire (ignored if not later than the current value)
  public var expirationTime: Proto_Timestamp {
    get {return _storage._expirationTime ?? Proto_Timestamp()}
    set {_uniqueStorage()._expirationTime = newValue}
  }
  /// Returns true if `expirationTime` has been explicitly set.
  public var hasExpirationTime: Bool {return _storage._expirationTime != nil}
  /// Clears the value of `expirationTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpirationTime() {_uniqueStorage()._expirationTime = nil}

  /// The keys that can modify or delete the file
  public var keys: Proto_KeyList {
    get {return _storage._keys ?? Proto_KeyList()}
    set {_uniqueStorage()._keys = newValue}
  }
  /// Returns true if `keys` has been explicitly set.
  public var hasKeys: Bool {return _storage._keys != nil}
  /// Clears the value of `keys`. Subsequent reads from it will return its default value.
  public mutating func clearKeys() {_uniqueStorage()._keys = nil}

  /// The new file contents. All the bytes in the old contents are discarded.
  public var contents: Data {
    get {return _storage._contents}
    set {_uniqueStorage()._contents = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto"

extension Proto_FileUpdateTransactionBody: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FileUpdateTransactionBody"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fileID"),
    2: .same(proto: "expirationTime"),
    3: .same(proto: "keys"),
    4: .same(proto: "contents"),
  ]

  fileprivate class _StorageClass {
    var _fileID: Proto_FileID? = nil
    var _expirationTime: Proto_Timestamp? = nil
    var _keys: Proto_KeyList? = nil
    var _contents: Data = SwiftProtobuf.Internal.emptyData

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _fileID = source._fileID
      _expirationTime = source._expirationTime
      _keys = source._keys
      _contents = source._contents
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._fileID)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._expirationTime)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._keys)
        case 4: try decoder.decodeSingularBytesField(value: &_storage._contents)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._fileID {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._expirationTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._keys {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if !_storage._contents.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._contents, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Proto_FileUpdateTransactionBody, rhs: Proto_FileUpdateTransactionBody) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._fileID != rhs_storage._fileID {return false}
        if _storage._expirationTime != rhs_storage._expirationTime {return false}
        if _storage._keys != rhs_storage._keys {return false}
        if _storage._contents != rhs_storage._contents {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
