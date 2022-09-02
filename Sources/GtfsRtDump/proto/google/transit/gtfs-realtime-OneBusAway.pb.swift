// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/google/transit/gtfs-realtime-OneBusAway.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2012 Google Inc
//
// The content of this file is licensed under the Creative Commons Attribution
// 3.0 License.
//
// Protocol definition OneBusAway-specific extensions to GTFS-realtime.

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

struct TransitRealtime_OneBusAwayFeedHeader {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// For an incremental feed, the index of the current incremental FeedMessage.
  /// Each incremental FeedMessage sent to a client should sequentially
  /// increment the index, such that a client can detect missed messages by
  /// looking for gaps in the index value.  It is not required that the index
  /// of the first message sent to a client be zero.
  var incrementalIndex: UInt64 {
    get {return _incrementalIndex ?? 0}
    set {_incrementalIndex = newValue}
  }
  /// Returns true if `incrementalIndex` has been explicitly set.
  var hasIncrementalIndex: Bool {return self._incrementalIndex != nil}
  /// Clears the value of `incrementalIndex`. Subsequent reads from it will return its default value.
  mutating func clearIncrementalIndex() {self._incrementalIndex = nil}

  /// For an incremental feed, the maximum amount of time, in seconds, between
  /// incremental updates.  Clients that have not received a FeedMessage, empty
  /// or otherwise, in the specified time interval should assume that the
  /// connection has been lost and reconnect.
  var incrementalHeartbeatInterval: UInt32 {
    get {return _incrementalHeartbeatInterval ?? 0}
    set {_incrementalHeartbeatInterval = newValue}
  }
  /// Returns true if `incrementalHeartbeatInterval` has been explicitly set.
  var hasIncrementalHeartbeatInterval: Bool {return self._incrementalHeartbeatInterval != nil}
  /// Clears the value of `incrementalHeartbeatInterval`. Subsequent reads from it will return its default value.
  mutating func clearIncrementalHeartbeatInterval() {self._incrementalHeartbeatInterval = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _incrementalIndex: UInt64? = nil
  fileprivate var _incrementalHeartbeatInterval: UInt32? = nil
}

struct TransitRealtime_OneBusAwayFeedEntity {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional description of the source of a particular feed entity.
  var source: String {
    get {return _source ?? String()}
    set {_source = newValue}
  }
  /// Returns true if `source` has been explicitly set.
  var hasSource: Bool {return self._source != nil}
  /// Clears the value of `source`. Subsequent reads from it will return its default value.
  mutating func clearSource() {self._source = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _source: String? = nil
}

struct TransitRealtime_OneBusAwayTripUpdate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Delay (in seconds) can be positive (meaning that the vehicle is late) or
  /// negative (meaning that the vehicle is ahead of schedule). Delay of 0
  /// means that the vehicle is exactly on time.
  ///
  /// Deprecated in favor of TripUpdate.delay
  var delay: Int32 {
    get {return _delay ?? 0}
    set {_delay = newValue}
  }
  /// Returns true if `delay` has been explicitly set.
  var hasDelay: Bool {return self._delay != nil}
  /// Clears the value of `delay`. Subsequent reads from it will return its default value.
  mutating func clearDelay() {self._delay = nil}

  /// Moment at which the trip update was computed. In POSIX time
  /// (i.e., number of seconds since January 1st 1970 00:00:00 UTC).
  ///
  /// Deprecated in favor of TripUpdate.timestamp
  var timestamp: UInt64 {
    get {return _timestamp ?? 0}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  mutating func clearTimestamp() {self._timestamp = nil}

  /// trip headsign
  var tripHeadsign: String {
    get {return _tripHeadsign ?? String()}
    set {_tripHeadsign = newValue}
  }
  /// Returns true if `tripHeadsign` has been explicitly set.
  var hasTripHeadsign: Bool {return self._tripHeadsign != nil}
  /// Clears the value of `tripHeadsign`. Subsequent reads from it will return its default value.
  mutating func clearTripHeadsign() {self._tripHeadsign = nil}

  /// trip direction
  var tripDirection: String {
    get {return _tripDirection ?? String()}
    set {_tripDirection = newValue}
  }
  /// Returns true if `tripDirection` has been explicitly set.
  var hasTripDirection: Bool {return self._tripDirection != nil}
  /// Clears the value of `tripDirection`. Subsequent reads from it will return its default value.
  mutating func clearTripDirection() {self._tripDirection = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _delay: Int32? = nil
  fileprivate var _timestamp: UInt64? = nil
  fileprivate var _tripHeadsign: String? = nil
  fileprivate var _tripDirection: String? = nil
}

struct TransitRealtime_OneBusAwayStopTimeUpdate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var stopHeadsign: String {
    get {return _stopHeadsign ?? String()}
    set {_stopHeadsign = newValue}
  }
  /// Returns true if `stopHeadsign` has been explicitly set.
  var hasStopHeadsign: Bool {return self._stopHeadsign != nil}
  /// Clears the value of `stopHeadsign`. Subsequent reads from it will return its default value.
  mutating func clearStopHeadsign() {self._stopHeadsign = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _stopHeadsign: String? = nil
}

struct TransitRealtime_OneBusAwayEntitySelector {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var elevatorID: String {
    get {return _elevatorID ?? String()}
    set {_elevatorID = newValue}
  }
  /// Returns true if `elevatorID` has been explicitly set.
  var hasElevatorID: Bool {return self._elevatorID != nil}
  /// Clears the value of `elevatorID`. Subsequent reads from it will return its default value.
  mutating func clearElevatorID() {self._elevatorID = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _elevatorID: String? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension TransitRealtime_OneBusAwayFeedHeader: @unchecked Sendable {}
extension TransitRealtime_OneBusAwayFeedEntity: @unchecked Sendable {}
extension TransitRealtime_OneBusAwayTripUpdate: @unchecked Sendable {}
extension TransitRealtime_OneBusAwayStopTimeUpdate: @unchecked Sendable {}
extension TransitRealtime_OneBusAwayEntitySelector: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Extension support defined in gtfs-realtime-OneBusAway.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension TransitRealtime_EntitySelector {

  var TransitRealtime_obaEntitySelector: TransitRealtime_OneBusAwayEntitySelector {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_oba_entity_selector) ?? TransitRealtime_OneBusAwayEntitySelector()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_oba_entity_selector, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_oba_entity_selector`
  /// has been explicitly set.
  var hasTransitRealtime_obaEntitySelector: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_oba_entity_selector)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_oba_entity_selector`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_obaEntitySelector() {
    clearExtensionValue(ext: TransitRealtime_Extensions_oba_entity_selector)
  }
}

extension TransitRealtime_FeedEntity {

  var TransitRealtime_obaFeedEntity: TransitRealtime_OneBusAwayFeedEntity {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_oba_feed_entity) ?? TransitRealtime_OneBusAwayFeedEntity()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_oba_feed_entity, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_oba_feed_entity`
  /// has been explicitly set.
  var hasTransitRealtime_obaFeedEntity: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_oba_feed_entity)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_oba_feed_entity`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_obaFeedEntity() {
    clearExtensionValue(ext: TransitRealtime_Extensions_oba_feed_entity)
  }
}

extension TransitRealtime_FeedHeader {

  var TransitRealtime_obaFeedHeader: TransitRealtime_OneBusAwayFeedHeader {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_oba_feed_header) ?? TransitRealtime_OneBusAwayFeedHeader()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_oba_feed_header, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_oba_feed_header`
  /// has been explicitly set.
  var hasTransitRealtime_obaFeedHeader: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_oba_feed_header)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_oba_feed_header`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_obaFeedHeader() {
    clearExtensionValue(ext: TransitRealtime_Extensions_oba_feed_header)
  }
}

extension TransitRealtime_TripUpdate {

  var TransitRealtime_obaTripUpdate: TransitRealtime_OneBusAwayTripUpdate {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_oba_trip_update) ?? TransitRealtime_OneBusAwayTripUpdate()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_oba_trip_update, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_oba_trip_update`
  /// has been explicitly set.
  var hasTransitRealtime_obaTripUpdate: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_oba_trip_update)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_oba_trip_update`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_obaTripUpdate() {
    clearExtensionValue(ext: TransitRealtime_Extensions_oba_trip_update)
  }
}

extension TransitRealtime_TripUpdate.StopTimeUpdate {

  var TransitRealtime_obaStopTimeUpdate: TransitRealtime_OneBusAwayStopTimeUpdate {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_oba_stop_time_update) ?? TransitRealtime_OneBusAwayStopTimeUpdate()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_oba_stop_time_update, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_oba_stop_time_update`
  /// has been explicitly set.
  var hasTransitRealtime_obaStopTimeUpdate: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_oba_stop_time_update)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_oba_stop_time_update`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_obaStopTimeUpdate() {
    clearExtensionValue(ext: TransitRealtime_Extensions_oba_stop_time_update)
  }

}

// MARK: - File's ExtensionMap: TransitRealtime_Gtfs_u45Realtime_u45OneBusAway_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let TransitRealtime_Gtfs_u45Realtime_u45OneBusAway_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  TransitRealtime_Extensions_oba_feed_header,
  TransitRealtime_Extensions_oba_feed_entity,
  TransitRealtime_Extensions_oba_trip_update,
  TransitRealtime_Extensions_oba_stop_time_update,
  TransitRealtime_Extensions_oba_entity_selector
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

let TransitRealtime_Extensions_oba_feed_header = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_OneBusAwayFeedHeader>, TransitRealtime_FeedHeader>(
  _protobuf_fieldNumber: 1000,
  fieldName: "transit_realtime.oba_feed_header"
)

let TransitRealtime_Extensions_oba_feed_entity = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_OneBusAwayFeedEntity>, TransitRealtime_FeedEntity>(
  _protobuf_fieldNumber: 1000,
  fieldName: "transit_realtime.oba_feed_entity"
)

let TransitRealtime_Extensions_oba_trip_update = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_OneBusAwayTripUpdate>, TransitRealtime_TripUpdate>(
  _protobuf_fieldNumber: 1000,
  fieldName: "transit_realtime.oba_trip_update"
)

let TransitRealtime_Extensions_oba_stop_time_update = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_OneBusAwayStopTimeUpdate>, TransitRealtime_TripUpdate.StopTimeUpdate>(
  _protobuf_fieldNumber: 1000,
  fieldName: "transit_realtime.oba_stop_time_update"
)

let TransitRealtime_Extensions_oba_entity_selector = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_OneBusAwayEntitySelector>, TransitRealtime_EntitySelector>(
  _protobuf_fieldNumber: 1000,
  fieldName: "transit_realtime.oba_entity_selector"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "transit_realtime"

extension TransitRealtime_OneBusAwayFeedHeader: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".OneBusAwayFeedHeader"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "incremental_index"),
    2: .standard(proto: "incremental_heartbeat_interval"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self._incrementalIndex) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self._incrementalHeartbeatInterval) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._incrementalIndex {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._incrementalHeartbeatInterval {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_OneBusAwayFeedHeader, rhs: TransitRealtime_OneBusAwayFeedHeader) -> Bool {
    if lhs._incrementalIndex != rhs._incrementalIndex {return false}
    if lhs._incrementalHeartbeatInterval != rhs._incrementalHeartbeatInterval {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_OneBusAwayFeedEntity: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".OneBusAwayFeedEntity"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "source"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._source) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._source {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_OneBusAwayFeedEntity, rhs: TransitRealtime_OneBusAwayFeedEntity) -> Bool {
    if lhs._source != rhs._source {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_OneBusAwayTripUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".OneBusAwayTripUpdate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "delay"),
    2: .same(proto: "timestamp"),
    3: .same(proto: "tripHeadsign"),
    4: .same(proto: "tripDirection"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._delay) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self._timestamp) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._tripHeadsign) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self._tripDirection) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._delay {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._timestamp {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._tripHeadsign {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._tripDirection {
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_OneBusAwayTripUpdate, rhs: TransitRealtime_OneBusAwayTripUpdate) -> Bool {
    if lhs._delay != rhs._delay {return false}
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs._tripHeadsign != rhs._tripHeadsign {return false}
    if lhs._tripDirection != rhs._tripDirection {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_OneBusAwayStopTimeUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".OneBusAwayStopTimeUpdate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "stopHeadsign"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._stopHeadsign) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._stopHeadsign {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_OneBusAwayStopTimeUpdate, rhs: TransitRealtime_OneBusAwayStopTimeUpdate) -> Bool {
    if lhs._stopHeadsign != rhs._stopHeadsign {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_OneBusAwayEntitySelector: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".OneBusAwayEntitySelector"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "elevatorId"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._elevatorID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._elevatorID {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_OneBusAwayEntitySelector, rhs: TransitRealtime_OneBusAwayEntitySelector) -> Bool {
    if lhs._elevatorID != rhs._elevatorID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}