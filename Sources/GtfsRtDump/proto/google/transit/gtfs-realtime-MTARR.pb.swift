// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/google/transit/gtfs-realtime-MTARR.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct TransitRealtime_MtaRailroadStopTimeUpdate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var track: String {
    get {return _track ?? String()}
    set {_track = newValue}
  }
  /// Returns true if `track` has been explicitly set.
  var hasTrack: Bool {return self._track != nil}
  /// Clears the value of `track`. Subsequent reads from it will return its default value.
  mutating func clearTrack() {self._track = nil}

  var trainStatus: String {
    get {return _trainStatus ?? String()}
    set {_trainStatus = newValue}
  }
  /// Returns true if `trainStatus` has been explicitly set.
  var hasTrainStatus: Bool {return self._trainStatus != nil}
  /// Clears the value of `trainStatus`. Subsequent reads from it will return its default value.
  mutating func clearTrainStatus() {self._trainStatus = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _track: String? = nil
  fileprivate var _trainStatus: String? = nil
}

struct TransitRealtime_MtaRailroadCarriageDetails {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  ///Indicates the number of bikes permitted per carriage.
  ///0=bikes prohibited, -1=No limit.
  var bicyclesAllowed: Int32 {
    get {return _bicyclesAllowed ?? 0}
    set {_bicyclesAllowed = newValue}
  }
  /// Returns true if `bicyclesAllowed` has been explicitly set.
  var hasBicyclesAllowed: Bool {return self._bicyclesAllowed != nil}
  /// Clears the value of `bicyclesAllowed`. Subsequent reads from it will return its default value.
  mutating func clearBicyclesAllowed() {self._bicyclesAllowed = nil}

  ///A description of the carriage type/model.
  var carriageClass: String {
    get {return _carriageClass ?? String()}
    set {_carriageClass = newValue}
  }
  /// Returns true if `carriageClass` has been explicitly set.
  var hasCarriageClass: Bool {return self._carriageClass != nil}
  /// Clears the value of `carriageClass`. Subsequent reads from it will return its default value.
  mutating func clearCarriageClass() {self._carriageClass = nil}

  var quietCarriage: TransitRealtime_MtaRailroadCarriageDetails.QuietCarriage {
    get {return _quietCarriage ?? .unknownQuietCarriage}
    set {_quietCarriage = newValue}
  }
  /// Returns true if `quietCarriage` has been explicitly set.
  var hasQuietCarriage: Bool {return self._quietCarriage != nil}
  /// Clears the value of `quietCarriage`. Subsequent reads from it will return its default value.
  mutating func clearQuietCarriage() {self._quietCarriage = nil}

  var toiletFacilities: TransitRealtime_MtaRailroadCarriageDetails.ToiletFacilities {
    get {return _toiletFacilities ?? .unknownToiletFacilities}
    set {_toiletFacilities = newValue}
  }
  /// Returns true if `toiletFacilities` has been explicitly set.
  var hasToiletFacilities: Bool {return self._toiletFacilities != nil}
  /// Clears the value of `toiletFacilities`. Subsequent reads from it will return its default value.
  mutating func clearToiletFacilities() {self._toiletFacilities = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Whether the carriage has toilet facilities onboard.
  enum QuietCarriage: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// It is unknown if the carriage is designated as a quiet carriage.
    ///  This is the default case.
    case unknownQuietCarriage // = 0

    /// The carriage is designated a quiet carriage.
    case quietCarriage // = 1

    /// The carriage is not designated as a quiet carriage.
    case notQuietCarriage // = 2

    init() {
      self = .unknownQuietCarriage
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknownQuietCarriage
      case 1: self = .quietCarriage
      case 2: self = .notQuietCarriage
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .unknownQuietCarriage: return 0
      case .quietCarriage: return 1
      case .notQuietCarriage: return 2
      }
    }

  }

  /// Whether the carriage has toilet facilities onboard.
  enum ToiletFacilities: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// It is unknown if the carriage has toilet facilities. This is the
    /// default case.
    case unknownToiletFacilities // = 0

    /// The carriage has toilet facilities onboard.
    case toiletOnboard // = 1

    /// The carriage does not have toilet facilities onboard.
    case noToiletOnboard // = 2

    init() {
      self = .unknownToiletFacilities
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknownToiletFacilities
      case 1: self = .toiletOnboard
      case 2: self = .noToiletOnboard
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .unknownToiletFacilities: return 0
      case .toiletOnboard: return 1
      case .noToiletOnboard: return 2
      }
    }

  }

  init() {}

  fileprivate var _bicyclesAllowed: Int32? = nil
  fileprivate var _carriageClass: String? = nil
  fileprivate var _quietCarriage: TransitRealtime_MtaRailroadCarriageDetails.QuietCarriage? = nil
  fileprivate var _toiletFacilities: TransitRealtime_MtaRailroadCarriageDetails.ToiletFacilities? = nil
}

#if swift(>=4.2)

extension TransitRealtime_MtaRailroadCarriageDetails.QuietCarriage: CaseIterable {
  // Support synthesized by the compiler.
}

extension TransitRealtime_MtaRailroadCarriageDetails.ToiletFacilities: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension TransitRealtime_MtaRailroadStopTimeUpdate: @unchecked Sendable {}
extension TransitRealtime_MtaRailroadCarriageDetails: @unchecked Sendable {}
extension TransitRealtime_MtaRailroadCarriageDetails.QuietCarriage: @unchecked Sendable {}
extension TransitRealtime_MtaRailroadCarriageDetails.ToiletFacilities: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Extension support defined in gtfs-realtime-MTARR.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension TransitRealtime_TripUpdate.StopTimeUpdate {

  var TransitRealtime_mtaRailroadStopTimeUpdate: TransitRealtime_MtaRailroadStopTimeUpdate {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_stop_time_update) ?? TransitRealtime_MtaRailroadStopTimeUpdate()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_stop_time_update, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_mta_railroad_stop_time_update`
  /// has been explicitly set.
  var hasTransitRealtime_mtaRailroadStopTimeUpdate: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_stop_time_update)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_mta_railroad_stop_time_update`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_mtaRailroadStopTimeUpdate() {
    clearExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_stop_time_update)
  }
}

extension TransitRealtime_VehiclePosition.CarriageDetails {

  var TransitRealtime_mtaRailroadCarriageDetails: TransitRealtime_MtaRailroadCarriageDetails {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_carriage_details) ?? TransitRealtime_MtaRailroadCarriageDetails()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_carriage_details, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_mta_railroad_carriage_details`
  /// has been explicitly set.
  var hasTransitRealtime_mtaRailroadCarriageDetails: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_carriage_details)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_mta_railroad_carriage_details`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_mtaRailroadCarriageDetails() {
    clearExtensionValue(ext: TransitRealtime_Extensions_mta_railroad_carriage_details)
  }

}

// MARK: - File's ExtensionMap: TransitRealtime_Gtfs_u45Realtime_u45Mtarr_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let TransitRealtime_Gtfs_u45Realtime_u45Mtarr_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  TransitRealtime_Extensions_mta_railroad_stop_time_update,
  TransitRealtime_Extensions_mta_railroad_carriage_details
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

let TransitRealtime_Extensions_mta_railroad_stop_time_update = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_MtaRailroadStopTimeUpdate>, TransitRealtime_TripUpdate.StopTimeUpdate>(
  _protobuf_fieldNumber: 1005,
  fieldName: "transit_realtime.mta_railroad_stop_time_update"
)

let TransitRealtime_Extensions_mta_railroad_carriage_details = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_MtaRailroadCarriageDetails>, TransitRealtime_VehiclePosition.CarriageDetails>(
  _protobuf_fieldNumber: 1005,
  fieldName: "transit_realtime.mta_railroad_carriage_details"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "transit_realtime"

extension TransitRealtime_MtaRailroadStopTimeUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MtaRailroadStopTimeUpdate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "track"),
    2: .same(proto: "trainStatus"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._track) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._trainStatus) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._track {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._trainStatus {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_MtaRailroadStopTimeUpdate, rhs: TransitRealtime_MtaRailroadStopTimeUpdate) -> Bool {
    if lhs._track != rhs._track {return false}
    if lhs._trainStatus != rhs._trainStatus {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_MtaRailroadCarriageDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MtaRailroadCarriageDetails"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "bicycles_allowed"),
    2: .standard(proto: "carriage_class"),
    3: .standard(proto: "quiet_carriage"),
    4: .standard(proto: "toilet_facilities"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._bicyclesAllowed) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._carriageClass) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self._quietCarriage) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self._toiletFacilities) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._bicyclesAllowed {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._carriageClass {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._quietCarriage {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._toiletFacilities {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_MtaRailroadCarriageDetails, rhs: TransitRealtime_MtaRailroadCarriageDetails) -> Bool {
    if lhs._bicyclesAllowed != rhs._bicyclesAllowed {return false}
    if lhs._carriageClass != rhs._carriageClass {return false}
    if lhs._quietCarriage != rhs._quietCarriage {return false}
    if lhs._toiletFacilities != rhs._toiletFacilities {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_MtaRailroadCarriageDetails.QuietCarriage: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_QUIET_CARRIAGE"),
    1: .same(proto: "QUIET_CARRIAGE"),
    2: .same(proto: "NOT_QUIET_CARRIAGE"),
  ]
}

extension TransitRealtime_MtaRailroadCarriageDetails.ToiletFacilities: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_TOILET_FACILITIES"),
    1: .same(proto: "TOILET_ONBOARD"),
    2: .same(proto: "NO_TOILET_ONBOARD"),
  ]
}
