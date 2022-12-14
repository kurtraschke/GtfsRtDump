// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: proto/google/transit/gtfs-realtime-service-status.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// Copyright 2020 Metropolitan Transportation Authority
///
/// Mercury extensions for the GTFS-realtime protocol.

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

/// Mercury extensions for the Feed Header
struct TransitRealtime_MercuryFeedHeader {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Version of the Mercury extensions
  /// The current version is 1.0
  var mercuryVersion: String {
    get {return _mercuryVersion ?? String()}
    set {_mercuryVersion = newValue}
  }
  /// Returns true if `mercuryVersion` has been explicitly set.
  var hasMercuryVersion: Bool {return self._mercuryVersion != nil}
  /// Clears the value of `mercuryVersion`. Subsequent reads from it will return its default value.
  mutating func clearMercuryVersion() {self._mercuryVersion = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _mercuryVersion: String? = nil
}

struct TransitRealtime_MercuryStationAlternative {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var affectedEntity: TransitRealtime_EntitySelector {
    get {return _affectedEntity ?? TransitRealtime_EntitySelector()}
    set {_affectedEntity = newValue}
  }
  /// Returns true if `affectedEntity` has been explicitly set.
  var hasAffectedEntity: Bool {return self._affectedEntity != nil}
  /// Clears the value of `affectedEntity`. Subsequent reads from it will return its default value.
  mutating func clearAffectedEntity() {self._affectedEntity = nil}

  var notes: TransitRealtime_TranslatedString {
    get {return _notes ?? TransitRealtime_TranslatedString()}
    set {_notes = newValue}
  }
  /// Returns true if `notes` has been explicitly set.
  var hasNotes: Bool {return self._notes != nil}
  /// Clears the value of `notes`. Subsequent reads from it will return its default value.
  mutating func clearNotes() {self._notes = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _affectedEntity: TransitRealtime_EntitySelector? = nil
  fileprivate var _notes: TransitRealtime_TranslatedString? = nil
}

/// Mercury extensions for the Feed Alert
struct TransitRealtime_MercuryAlert {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var createdAt: UInt64 {
    get {return _createdAt ?? 0}
    set {_createdAt = newValue}
  }
  /// Returns true if `createdAt` has been explicitly set.
  var hasCreatedAt: Bool {return self._createdAt != nil}
  /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
  mutating func clearCreatedAt() {self._createdAt = nil}

  var updatedAt: UInt64 {
    get {return _updatedAt ?? 0}
    set {_updatedAt = newValue}
  }
  /// Returns true if `updatedAt` has been explicitly set.
  var hasUpdatedAt: Bool {return self._updatedAt != nil}
  /// Clears the value of `updatedAt`. Subsequent reads from it will return its default value.
  mutating func clearUpdatedAt() {self._updatedAt = nil}

  var alertType: String {
    get {return _alertType ?? String()}
    set {_alertType = newValue}
  }
  /// Returns true if `alertType` has been explicitly set.
  var hasAlertType: Bool {return self._alertType != nil}
  /// Clears the value of `alertType`. Subsequent reads from it will return its default value.
  mutating func clearAlertType() {self._alertType = nil}

  var stationAlternative: [TransitRealtime_MercuryStationAlternative] = []

  var servicePlanNumber: [String] = []

  var generalOrderNumber: [String] = []

  /// A time interval, in seconds, indicating how long before each active period
  /// consumers should display this alert. A value of 3600 here, for example,
  /// suggests that this alert should be displayed 1 hour before each active
  /// period. Consumers may choose to ignore this recommendation and display (or
  /// not display) alerts based on their own logic if they so choose.
  var displayBeforeActive: UInt64 {
    get {return _displayBeforeActive ?? 0}
    set {_displayBeforeActive = newValue}
  }
  /// Returns true if `displayBeforeActive` has been explicitly set.
  var hasDisplayBeforeActive: Bool {return self._displayBeforeActive != nil}
  /// Clears the value of `displayBeforeActive`. Subsequent reads from it will return its default value.
  mutating func clearDisplayBeforeActive() {self._displayBeforeActive = nil}

  /// A human-friendly string that summarizes all active periods for this Alert,
  /// i.e. "Sundays in May from 10:45pm to midnight"
  var humanReadableActivePeriod: TransitRealtime_TranslatedString {
    get {return _humanReadableActivePeriod ?? TransitRealtime_TranslatedString()}
    set {_humanReadableActivePeriod = newValue}
  }
  /// Returns true if `humanReadableActivePeriod` has been explicitly set.
  var hasHumanReadableActivePeriod: Bool {return self._humanReadableActivePeriod != nil}
  /// Clears the value of `humanReadableActivePeriod`. Subsequent reads from it will return its default value.
  mutating func clearHumanReadableActivePeriod() {self._humanReadableActivePeriod = nil}

  var directionality: UInt64 {
    get {return _directionality ?? 0}
    set {_directionality = newValue}
  }
  /// Returns true if `directionality` has been explicitly set.
  var hasDirectionality: Bool {return self._directionality != nil}
  /// Clears the value of `directionality`. Subsequent reads from it will return its default value.
  mutating func clearDirectionality() {self._directionality = nil}

  var affectedStations: [TransitRealtime_EntitySelector] = []

  var screensSummary: TransitRealtime_TranslatedString {
    get {return _screensSummary ?? TransitRealtime_TranslatedString()}
    set {_screensSummary = newValue}
  }
  /// Returns true if `screensSummary` has been explicitly set.
  var hasScreensSummary: Bool {return self._screensSummary != nil}
  /// Clears the value of `screensSummary`. Subsequent reads from it will return its default value.
  mutating func clearScreensSummary() {self._screensSummary = nil}

  var noAffectedStations: Bool {
    get {return _noAffectedStations ?? false}
    set {_noAffectedStations = newValue}
  }
  /// Returns true if `noAffectedStations` has been explicitly set.
  var hasNoAffectedStations: Bool {return self._noAffectedStations != nil}
  /// Clears the value of `noAffectedStations`. Subsequent reads from it will return its default value.
  mutating func clearNoAffectedStations() {self._noAffectedStations = nil}

  /// The ids of the planned work cloned from
  var cloneID: String {
    get {return _cloneID ?? String()}
    set {_cloneID = newValue}
  }
  /// Returns true if `cloneID` has been explicitly set.
  var hasCloneID: Bool {return self._cloneID != nil}
  /// Clears the value of `cloneID`. Subsequent reads from it will return its default value.
  mutating func clearCloneID() {self._cloneID = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _createdAt: UInt64? = nil
  fileprivate var _updatedAt: UInt64? = nil
  fileprivate var _alertType: String? = nil
  fileprivate var _displayBeforeActive: UInt64? = nil
  fileprivate var _humanReadableActivePeriod: TransitRealtime_TranslatedString? = nil
  fileprivate var _directionality: UInt64? = nil
  fileprivate var _screensSummary: TransitRealtime_TranslatedString? = nil
  fileprivate var _noAffectedStations: Bool? = nil
  fileprivate var _cloneID: String? = nil
}

/// Mercury extensions for the Feed Entity Selector
struct TransitRealtime_MercuryEntitySelector {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Format for sort_order is 'GTFS-ID:Priority', e.g. 'MTASBWY:G:16'
  var sortOrder: String {
    get {return _sortOrder ?? String()}
    set {_sortOrder = newValue}
  }
  /// Returns true if `sortOrder` has been explicitly set.
  var hasSortOrder: Bool {return self._sortOrder != nil}
  /// Clears the value of `sortOrder`. Subsequent reads from it will return its default value.
  mutating func clearSortOrder() {self._sortOrder = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Priority: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case noScheduledService // = 1
    case noMiddayService // = 2
    case noOvernightService // = 3
    case noWeekendService // = 4
    case weekdaySchedule // = 5
    case weekendSchedule // = 6
    case saturdaySchedule // = 7
    case sundaySchedule // = 8
    case extraService // = 9
    case specialSchedule // = 10
    case stationNotice // = 11
    case specialEvent // = 12
    case plannedBoardingChange // = 13
    case boardingChange // = 14
    case reducedService // = 15
    case plannedWork // = 16
    case plannedStationsSkipped // = 17
    case plannedExpressToLocal // = 18
    case slowSpeeds // = 19
    case expectDelays // = 20
    case plannedLocalToExpress // = 21
    case plannedBusesDetoured // = 22
    case plannedTrainsRerouted // = 23
    case plannedSubstituteBuses // = 24
    case plannedPartSuspended // = 25
    case plannedMultipleChanges // = 26
    case someDelays // = 27
    case stationsSkipped // = 28
    case expressToLocal // = 29
    case delays // = 30
    case someReroutes // = 31
    case localToExpress // = 32
    case busesDetoured // = 33
    case serviceChange // = 34
    case trainsRerouted // = 35
    case substituteBuses // = 36
    case partSuspended // = 37
    case multipleChanges // = 38
    case plannedSuspended // = 39
    case suspended // = 40

    init() {
      self = .noScheduledService
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 1: self = .noScheduledService
      case 2: self = .noMiddayService
      case 3: self = .noOvernightService
      case 4: self = .noWeekendService
      case 5: self = .weekdaySchedule
      case 6: self = .weekendSchedule
      case 7: self = .saturdaySchedule
      case 8: self = .sundaySchedule
      case 9: self = .extraService
      case 10: self = .specialSchedule
      case 11: self = .stationNotice
      case 12: self = .specialEvent
      case 13: self = .plannedBoardingChange
      case 14: self = .boardingChange
      case 15: self = .reducedService
      case 16: self = .plannedWork
      case 17: self = .plannedStationsSkipped
      case 18: self = .plannedExpressToLocal
      case 19: self = .slowSpeeds
      case 20: self = .expectDelays
      case 21: self = .plannedLocalToExpress
      case 22: self = .plannedBusesDetoured
      case 23: self = .plannedTrainsRerouted
      case 24: self = .plannedSubstituteBuses
      case 25: self = .plannedPartSuspended
      case 26: self = .plannedMultipleChanges
      case 27: self = .someDelays
      case 28: self = .stationsSkipped
      case 29: self = .expressToLocal
      case 30: self = .delays
      case 31: self = .someReroutes
      case 32: self = .localToExpress
      case 33: self = .busesDetoured
      case 34: self = .serviceChange
      case 35: self = .trainsRerouted
      case 36: self = .substituteBuses
      case 37: self = .partSuspended
      case 38: self = .multipleChanges
      case 39: self = .plannedSuspended
      case 40: self = .suspended
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .noScheduledService: return 1
      case .noMiddayService: return 2
      case .noOvernightService: return 3
      case .noWeekendService: return 4
      case .weekdaySchedule: return 5
      case .weekendSchedule: return 6
      case .saturdaySchedule: return 7
      case .sundaySchedule: return 8
      case .extraService: return 9
      case .specialSchedule: return 10
      case .stationNotice: return 11
      case .specialEvent: return 12
      case .plannedBoardingChange: return 13
      case .boardingChange: return 14
      case .reducedService: return 15
      case .plannedWork: return 16
      case .plannedStationsSkipped: return 17
      case .plannedExpressToLocal: return 18
      case .slowSpeeds: return 19
      case .expectDelays: return 20
      case .plannedLocalToExpress: return 21
      case .plannedBusesDetoured: return 22
      case .plannedTrainsRerouted: return 23
      case .plannedSubstituteBuses: return 24
      case .plannedPartSuspended: return 25
      case .plannedMultipleChanges: return 26
      case .someDelays: return 27
      case .stationsSkipped: return 28
      case .expressToLocal: return 29
      case .delays: return 30
      case .someReroutes: return 31
      case .localToExpress: return 32
      case .busesDetoured: return 33
      case .serviceChange: return 34
      case .trainsRerouted: return 35
      case .substituteBuses: return 36
      case .partSuspended: return 37
      case .multipleChanges: return 38
      case .plannedSuspended: return 39
      case .suspended: return 40
      }
    }

  }

  init() {}

  fileprivate var _sortOrder: String? = nil
}

#if swift(>=4.2)

extension TransitRealtime_MercuryEntitySelector.Priority: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

#if swift(>=5.5) && canImport(_Concurrency)
extension TransitRealtime_MercuryFeedHeader: @unchecked Sendable {}
extension TransitRealtime_MercuryStationAlternative: @unchecked Sendable {}
extension TransitRealtime_MercuryAlert: @unchecked Sendable {}
extension TransitRealtime_MercuryEntitySelector: @unchecked Sendable {}
extension TransitRealtime_MercuryEntitySelector.Priority: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Extension support defined in gtfs-realtime-service-status.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension TransitRealtime_Alert {

  var TransitRealtime_mercuryAlert: TransitRealtime_MercuryAlert {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_mercury_alert) ?? TransitRealtime_MercuryAlert()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_mercury_alert, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_mercury_alert`
  /// has been explicitly set.
  var hasTransitRealtime_mercuryAlert: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_mercury_alert)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_mercury_alert`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_mercuryAlert() {
    clearExtensionValue(ext: TransitRealtime_Extensions_mercury_alert)
  }
}

extension TransitRealtime_EntitySelector {

  var TransitRealtime_mercuryEntitySelector: TransitRealtime_MercuryEntitySelector {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_mercury_entity_selector) ?? TransitRealtime_MercuryEntitySelector()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_mercury_entity_selector, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_mercury_entity_selector`
  /// has been explicitly set.
  var hasTransitRealtime_mercuryEntitySelector: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_mercury_entity_selector)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_mercury_entity_selector`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_mercuryEntitySelector() {
    clearExtensionValue(ext: TransitRealtime_Extensions_mercury_entity_selector)
  }
}

extension TransitRealtime_FeedHeader {

  var TransitRealtime_mercuryFeedHeader: TransitRealtime_MercuryFeedHeader {
    get {return getExtensionValue(ext: TransitRealtime_Extensions_mercury_feed_header) ?? TransitRealtime_MercuryFeedHeader()}
    set {setExtensionValue(ext: TransitRealtime_Extensions_mercury_feed_header, value: newValue)}
  }
  /// Returns true if extension `TransitRealtime_Extensions_mercury_feed_header`
  /// has been explicitly set.
  var hasTransitRealtime_mercuryFeedHeader: Bool {
    return hasExtensionValue(ext: TransitRealtime_Extensions_mercury_feed_header)
  }
  /// Clears the value of extension `TransitRealtime_Extensions_mercury_feed_header`.
  /// Subsequent reads from it will return its default value.
  mutating func clearTransitRealtime_mercuryFeedHeader() {
    clearExtensionValue(ext: TransitRealtime_Extensions_mercury_feed_header)
  }

}

// MARK: - File's ExtensionMap: TransitRealtime_Gtfs_u45Realtime_u45Service_u45Status_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let TransitRealtime_Gtfs_u45Realtime_u45Service_u45Status_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  TransitRealtime_Extensions_mercury_feed_header,
  TransitRealtime_Extensions_mercury_alert,
  TransitRealtime_Extensions_mercury_entity_selector
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

let TransitRealtime_Extensions_mercury_feed_header = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_MercuryFeedHeader>, TransitRealtime_FeedHeader>(
  _protobuf_fieldNumber: 1001,
  fieldName: "transit_realtime.mercury_feed_header"
)

let TransitRealtime_Extensions_mercury_alert = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_MercuryAlert>, TransitRealtime_Alert>(
  _protobuf_fieldNumber: 1001,
  fieldName: "transit_realtime.mercury_alert"
)

let TransitRealtime_Extensions_mercury_entity_selector = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<TransitRealtime_MercuryEntitySelector>, TransitRealtime_EntitySelector>(
  _protobuf_fieldNumber: 1001,
  fieldName: "transit_realtime.mercury_entity_selector"
)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "transit_realtime"

extension TransitRealtime_MercuryFeedHeader: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MercuryFeedHeader"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "mercury_version"),
  ]

  public var isInitialized: Bool {
    if self._mercuryVersion == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._mercuryVersion) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._mercuryVersion {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_MercuryFeedHeader, rhs: TransitRealtime_MercuryFeedHeader) -> Bool {
    if lhs._mercuryVersion != rhs._mercuryVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_MercuryStationAlternative: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MercuryStationAlternative"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "affected_entity"),
    2: .same(proto: "notes"),
  ]

  public var isInitialized: Bool {
    if self._affectedEntity == nil {return false}
    if self._notes == nil {return false}
    if let v = self._affectedEntity, !v.isInitialized {return false}
    if let v = self._notes, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._affectedEntity) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._notes) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._affectedEntity {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._notes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_MercuryStationAlternative, rhs: TransitRealtime_MercuryStationAlternative) -> Bool {
    if lhs._affectedEntity != rhs._affectedEntity {return false}
    if lhs._notes != rhs._notes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_MercuryAlert: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MercuryAlert"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "created_at"),
    2: .standard(proto: "updated_at"),
    3: .standard(proto: "alert_type"),
    4: .standard(proto: "station_alternative"),
    5: .standard(proto: "service_plan_number"),
    6: .standard(proto: "general_order_number"),
    7: .standard(proto: "display_before_active"),
    8: .standard(proto: "human_readable_active_period"),
    9: .same(proto: "directionality"),
    10: .standard(proto: "affected_stations"),
    11: .standard(proto: "screens_summary"),
    12: .standard(proto: "no_affected_stations"),
    13: .standard(proto: "clone_id"),
  ]

  public var isInitialized: Bool {
    if self._createdAt == nil {return false}
    if self._updatedAt == nil {return false}
    if self._alertType == nil {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.stationAlternative) {return false}
    if let v = self._humanReadableActivePeriod, !v.isInitialized {return false}
    if !SwiftProtobuf.Internal.areAllInitialized(self.affectedStations) {return false}
    if let v = self._screensSummary, !v.isInitialized {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self._createdAt) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self._updatedAt) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._alertType) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.stationAlternative) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.servicePlanNumber) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.generalOrderNumber) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self._displayBeforeActive) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._humanReadableActivePeriod) }()
      case 9: try { try decoder.decodeSingularUInt64Field(value: &self._directionality) }()
      case 10: try { try decoder.decodeRepeatedMessageField(value: &self.affectedStations) }()
      case 11: try { try decoder.decodeSingularMessageField(value: &self._screensSummary) }()
      case 12: try { try decoder.decodeSingularBoolField(value: &self._noAffectedStations) }()
      case 13: try { try decoder.decodeSingularStringField(value: &self._cloneID) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._createdAt {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._updatedAt {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._alertType {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    if !self.stationAlternative.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.stationAlternative, fieldNumber: 4)
    }
    if !self.servicePlanNumber.isEmpty {
      try visitor.visitRepeatedStringField(value: self.servicePlanNumber, fieldNumber: 5)
    }
    if !self.generalOrderNumber.isEmpty {
      try visitor.visitRepeatedStringField(value: self.generalOrderNumber, fieldNumber: 6)
    }
    try { if let v = self._displayBeforeActive {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._humanReadableActivePeriod {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    try { if let v = self._directionality {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 9)
    } }()
    if !self.affectedStations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.affectedStations, fieldNumber: 10)
    }
    try { if let v = self._screensSummary {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    } }()
    try { if let v = self._noAffectedStations {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 12)
    } }()
    try { if let v = self._cloneID {
      try visitor.visitSingularStringField(value: v, fieldNumber: 13)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_MercuryAlert, rhs: TransitRealtime_MercuryAlert) -> Bool {
    if lhs._createdAt != rhs._createdAt {return false}
    if lhs._updatedAt != rhs._updatedAt {return false}
    if lhs._alertType != rhs._alertType {return false}
    if lhs.stationAlternative != rhs.stationAlternative {return false}
    if lhs.servicePlanNumber != rhs.servicePlanNumber {return false}
    if lhs.generalOrderNumber != rhs.generalOrderNumber {return false}
    if lhs._displayBeforeActive != rhs._displayBeforeActive {return false}
    if lhs._humanReadableActivePeriod != rhs._humanReadableActivePeriod {return false}
    if lhs._directionality != rhs._directionality {return false}
    if lhs.affectedStations != rhs.affectedStations {return false}
    if lhs._screensSummary != rhs._screensSummary {return false}
    if lhs._noAffectedStations != rhs._noAffectedStations {return false}
    if lhs._cloneID != rhs._cloneID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_MercuryEntitySelector: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MercuryEntitySelector"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "sort_order"),
  ]

  public var isInitialized: Bool {
    if self._sortOrder == nil {return false}
    return true
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self._sortOrder) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._sortOrder {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: TransitRealtime_MercuryEntitySelector, rhs: TransitRealtime_MercuryEntitySelector) -> Bool {
    if lhs._sortOrder != rhs._sortOrder {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TransitRealtime_MercuryEntitySelector.Priority: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "PRIORITY_NO_SCHEDULED_SERVICE"),
    2: .same(proto: "PRIORITY_NO_MIDDAY_SERVICE"),
    3: .same(proto: "PRIORITY_NO_OVERNIGHT_SERVICE"),
    4: .same(proto: "PRIORITY_NO_WEEKEND_SERVICE"),
    5: .same(proto: "PRIORITY_WEEKDAY_SCHEDULE"),
    6: .same(proto: "PRIORITY_WEEKEND_SCHEDULE"),
    7: .same(proto: "PRIORITY_SATURDAY_SCHEDULE"),
    8: .same(proto: "PRIORITY_SUNDAY_SCHEDULE"),
    9: .same(proto: "PRIORITY_EXTRA_SERVICE"),
    10: .same(proto: "PRIORITY_SPECIAL_SCHEDULE"),
    11: .same(proto: "PRIORITY_STATION_NOTICE"),
    12: .same(proto: "PRIORITY_SPECIAL_EVENT"),
    13: .same(proto: "PRIORITY_PLANNED_BOARDING_CHANGE"),
    14: .same(proto: "PRIORITY_BOARDING_CHANGE"),
    15: .same(proto: "PRIORITY_REDUCED_SERVICE"),
    16: .same(proto: "PRIORITY_PLANNED_WORK"),
    17: .same(proto: "PRIORITY_PLANNED_STATIONS_SKIPPED"),
    18: .same(proto: "PRIORITY_PLANNED_EXPRESS_TO_LOCAL"),
    19: .same(proto: "PRIORITY_SLOW_SPEEDS"),
    20: .same(proto: "PRIORITY_EXPECT_DELAYS"),
    21: .same(proto: "PRIORITY_PLANNED_LOCAL_TO_EXPRESS"),
    22: .same(proto: "PRIORITY_PLANNED_BUSES_DETOURED"),
    23: .same(proto: "PRIORITY_PLANNED_TRAINS_REROUTED"),
    24: .same(proto: "PRIORITY_PLANNED_SUBSTITUTE_BUSES"),
    25: .same(proto: "PRIORITY_PLANNED_PART_SUSPENDED"),
    26: .same(proto: "PRIORITY_PLANNED_MULTIPLE_CHANGES"),
    27: .same(proto: "PRIORITY_SOME_DELAYS"),
    28: .same(proto: "PRIORITY_STATIONS_SKIPPED"),
    29: .same(proto: "PRIORITY_EXPRESS_TO_LOCAL"),
    30: .same(proto: "PRIORITY_DELAYS"),
    31: .same(proto: "PRIORITY_SOME_REROUTES"),
    32: .same(proto: "PRIORITY_LOCAL_TO_EXPRESS"),
    33: .same(proto: "PRIORITY_BUSES_DETOURED"),
    34: .same(proto: "PRIORITY_SERVICE_CHANGE"),
    35: .same(proto: "PRIORITY_TRAINS_REROUTED"),
    36: .same(proto: "PRIORITY_SUBSTITUTE_BUSES"),
    37: .same(proto: "PRIORITY_PART_SUSPENDED"),
    38: .same(proto: "PRIORITY_MULTIPLE_CHANGES"),
    39: .same(proto: "PRIORITY_PLANNED_SUSPENDED"),
    40: .same(proto: "PRIORITY_SUSPENDED"),
  ]
}
