// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: progress.proto
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

enum Apisvr_TimeType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknownTimeType // = 0
  case day // = 1
  case month // = 2
  case year // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .unknownTimeType
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownTimeType
    case 1: self = .day
    case 2: self = .month
    case 3: self = .year
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknownTimeType: return 0
    case .day: return 1
    case .month: return 2
    case .year: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Apisvr_TimeType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Apisvr_TimeType] = [
    .unknownTimeType,
    .day,
    .month,
    .year,
  ]
}

#endif  // swift(>=4.2)

enum Apisvr_BodyMeasurementType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unknownBodyMeasurementType // = 0
  case bust // = 1
  case waist // = 2
  case hips // = 3
  case arm // = 4
  case UNRECOGNIZED(Int)

  init() {
    self = .unknownBodyMeasurementType
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownBodyMeasurementType
    case 1: self = .bust
    case 2: self = .waist
    case 3: self = .hips
    case 4: self = .arm
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unknownBodyMeasurementType: return 0
    case .bust: return 1
    case .waist: return 2
    case .hips: return 3
    case .arm: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Apisvr_BodyMeasurementType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Apisvr_BodyMeasurementType] = [
    .unknownBodyMeasurementType,
    .bust,
    .waist,
    .hips,
    .arm,
  ]
}

#endif  // swift(>=4.2)

struct Apisvr_GetProgressHomeReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var date: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_Log {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var date: Int64 = 0

  var value: Float = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_BodyMeasurementLog {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var title: String = String()

  var value: Float = 0

  var unit: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Sort by date
struct Apisvr_GetProgressHomeResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var weightLogs: [Apisvr_Log] = []

  var goal: String = String()

  var initialWeight: Float = 0

  var targetWeight: Float = 0

  var remainingDays: Int32 = 0

  var bodyMeasurementLog: [Apisvr_BodyMeasurementLog] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Same date can only have one value, the newest value will replace the old one
struct Apisvr_AddWeightLogReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var date: Int64 = 0

  var weight: Float = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_AddWeightLogResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetWeightLogsReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var timeType: Apisvr_TimeType = .unknownTimeType

  var offset: Int32 = 0

  var limit: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Average value of weight that display in the chart
struct Apisvr_WeightDataPoint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var xAxis: String = String()

  var value: Float = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetWeightLogsResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var weightDataPoints: [Apisvr_WeightDataPoint] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_WeeklyReport {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var dateDuration: String = String()

  var coachName: String = String()

  var reportURL: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetWeeklyReportReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var offset: Int32 = 0

  var limit: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetWeeklyReportResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var weeklyReport: [Apisvr_WeeklyReport] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetBodyMeasurementLogReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var offset: Int32 = 0

  var limit: Int32 = 0

  var bodyMeasurementType: [Apisvr_BodyMeasurementType] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_MeasurementChart {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var title: String = String()

  var logs: [Apisvr_Log] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetBodyMeasurementLogResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var measurementCharts: [Apisvr_MeasurementChart] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetBodyShapeReq {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_BodyShape {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var photoURL: String = String()

  var value: Float = 0

  var date: Int64 = 0

  var unit: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apisvr_GetBodyShapeResp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var bodyShapes: [Apisvr_BodyShape] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "apisvr"

extension Apisvr_TimeType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_TIME_TYPE"),
    1: .same(proto: "DAY"),
    2: .same(proto: "MONTH"),
    3: .same(proto: "YEAR"),
  ]
}

extension Apisvr_BodyMeasurementType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_Body_Measurement_TYPE"),
    1: .same(proto: "BUST"),
    2: .same(proto: "WAIST"),
    3: .same(proto: "HIPS"),
    4: .same(proto: "ARM"),
  ]
}

extension Apisvr_GetProgressHomeReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetProgressHomeReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "date"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.date)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.date != 0 {
      try visitor.visitSingularInt64Field(value: self.date, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetProgressHomeReq, rhs: Apisvr_GetProgressHomeReq) -> Bool {
    if lhs.date != rhs.date {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_Log: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Log"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "date"),
    2: .same(proto: "value"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.date)
      case 2: try decoder.decodeSingularFloatField(value: &self.value)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.date != 0 {
      try visitor.visitSingularInt64Field(value: self.date, fieldNumber: 1)
    }
    if self.value != 0 {
      try visitor.visitSingularFloatField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_Log, rhs: Apisvr_Log) -> Bool {
    if lhs.date != rhs.date {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_BodyMeasurementLog: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BodyMeasurementLog"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "value"),
    3: .same(proto: "unit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.title)
      case 2: try decoder.decodeSingularFloatField(value: &self.value)
      case 3: try decoder.decodeSingularStringField(value: &self.unit)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if self.value != 0 {
      try visitor.visitSingularFloatField(value: self.value, fieldNumber: 2)
    }
    if !self.unit.isEmpty {
      try visitor.visitSingularStringField(value: self.unit, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_BodyMeasurementLog, rhs: Apisvr_BodyMeasurementLog) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unit != rhs.unit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetProgressHomeResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetProgressHomeResp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "weight_logs"),
    2: .same(proto: "goal"),
    3: .standard(proto: "initial_weight"),
    4: .standard(proto: "target_weight"),
    5: .standard(proto: "remaining_days"),
    6: .standard(proto: "body_measurement_log"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.weightLogs)
      case 2: try decoder.decodeSingularStringField(value: &self.goal)
      case 3: try decoder.decodeSingularFloatField(value: &self.initialWeight)
      case 4: try decoder.decodeSingularFloatField(value: &self.targetWeight)
      case 5: try decoder.decodeSingularInt32Field(value: &self.remainingDays)
      case 6: try decoder.decodeRepeatedMessageField(value: &self.bodyMeasurementLog)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.weightLogs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.weightLogs, fieldNumber: 1)
    }
    if !self.goal.isEmpty {
      try visitor.visitSingularStringField(value: self.goal, fieldNumber: 2)
    }
    if self.initialWeight != 0 {
      try visitor.visitSingularFloatField(value: self.initialWeight, fieldNumber: 3)
    }
    if self.targetWeight != 0 {
      try visitor.visitSingularFloatField(value: self.targetWeight, fieldNumber: 4)
    }
    if self.remainingDays != 0 {
      try visitor.visitSingularInt32Field(value: self.remainingDays, fieldNumber: 5)
    }
    if !self.bodyMeasurementLog.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.bodyMeasurementLog, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetProgressHomeResp, rhs: Apisvr_GetProgressHomeResp) -> Bool {
    if lhs.weightLogs != rhs.weightLogs {return false}
    if lhs.goal != rhs.goal {return false}
    if lhs.initialWeight != rhs.initialWeight {return false}
    if lhs.targetWeight != rhs.targetWeight {return false}
    if lhs.remainingDays != rhs.remainingDays {return false}
    if lhs.bodyMeasurementLog != rhs.bodyMeasurementLog {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_AddWeightLogReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AddWeightLogReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "date"),
    2: .same(proto: "weight"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.date)
      case 2: try decoder.decodeSingularFloatField(value: &self.weight)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.date != 0 {
      try visitor.visitSingularInt64Field(value: self.date, fieldNumber: 1)
    }
    if self.weight != 0 {
      try visitor.visitSingularFloatField(value: self.weight, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_AddWeightLogReq, rhs: Apisvr_AddWeightLogReq) -> Bool {
    if lhs.date != rhs.date {return false}
    if lhs.weight != rhs.weight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_AddWeightLogResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AddWeightLogResp"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_AddWeightLogResp, rhs: Apisvr_AddWeightLogResp) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetWeightLogsReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetWeightLogsReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_type"),
    2: .same(proto: "offset"),
    3: .same(proto: "limit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.timeType)
      case 2: try decoder.decodeSingularInt32Field(value: &self.offset)
      case 3: try decoder.decodeSingularInt32Field(value: &self.limit)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.timeType != .unknownTimeType {
      try visitor.visitSingularEnumField(value: self.timeType, fieldNumber: 1)
    }
    if self.offset != 0 {
      try visitor.visitSingularInt32Field(value: self.offset, fieldNumber: 2)
    }
    if self.limit != 0 {
      try visitor.visitSingularInt32Field(value: self.limit, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetWeightLogsReq, rhs: Apisvr_GetWeightLogsReq) -> Bool {
    if lhs.timeType != rhs.timeType {return false}
    if lhs.offset != rhs.offset {return false}
    if lhs.limit != rhs.limit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_WeightDataPoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WeightDataPoint"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "x_axis"),
    2: .same(proto: "value"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.xAxis)
      case 2: try decoder.decodeSingularFloatField(value: &self.value)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.xAxis.isEmpty {
      try visitor.visitSingularStringField(value: self.xAxis, fieldNumber: 1)
    }
    if self.value != 0 {
      try visitor.visitSingularFloatField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_WeightDataPoint, rhs: Apisvr_WeightDataPoint) -> Bool {
    if lhs.xAxis != rhs.xAxis {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetWeightLogsResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetWeightLogsResp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "weight_data_points"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.weightDataPoints)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.weightDataPoints.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.weightDataPoints, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetWeightLogsResp, rhs: Apisvr_GetWeightLogsResp) -> Bool {
    if lhs.weightDataPoints != rhs.weightDataPoints {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_WeeklyReport: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".WeeklyReport"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "date_duration"),
    2: .standard(proto: "coach_name"),
    3: .standard(proto: "report_url"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.dateDuration)
      case 2: try decoder.decodeSingularStringField(value: &self.coachName)
      case 3: try decoder.decodeSingularStringField(value: &self.reportURL)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.dateDuration.isEmpty {
      try visitor.visitSingularStringField(value: self.dateDuration, fieldNumber: 1)
    }
    if !self.coachName.isEmpty {
      try visitor.visitSingularStringField(value: self.coachName, fieldNumber: 2)
    }
    if !self.reportURL.isEmpty {
      try visitor.visitSingularStringField(value: self.reportURL, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_WeeklyReport, rhs: Apisvr_WeeklyReport) -> Bool {
    if lhs.dateDuration != rhs.dateDuration {return false}
    if lhs.coachName != rhs.coachName {return false}
    if lhs.reportURL != rhs.reportURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetWeeklyReportReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetWeeklyReportReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "offset"),
    2: .same(proto: "limit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.offset)
      case 2: try decoder.decodeSingularInt32Field(value: &self.limit)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.offset != 0 {
      try visitor.visitSingularInt32Field(value: self.offset, fieldNumber: 1)
    }
    if self.limit != 0 {
      try visitor.visitSingularInt32Field(value: self.limit, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetWeeklyReportReq, rhs: Apisvr_GetWeeklyReportReq) -> Bool {
    if lhs.offset != rhs.offset {return false}
    if lhs.limit != rhs.limit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetWeeklyReportResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetWeeklyReportResp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "weekly_report"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.weeklyReport)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.weeklyReport.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.weeklyReport, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetWeeklyReportResp, rhs: Apisvr_GetWeeklyReportResp) -> Bool {
    if lhs.weeklyReport != rhs.weeklyReport {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetBodyMeasurementLogReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetBodyMeasurementLogReq"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "offset"),
    2: .same(proto: "limit"),
    3: .standard(proto: "body_measurement_type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.offset)
      case 2: try decoder.decodeSingularInt32Field(value: &self.limit)
      case 3: try decoder.decodeRepeatedEnumField(value: &self.bodyMeasurementType)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.offset != 0 {
      try visitor.visitSingularInt32Field(value: self.offset, fieldNumber: 1)
    }
    if self.limit != 0 {
      try visitor.visitSingularInt32Field(value: self.limit, fieldNumber: 2)
    }
    if !self.bodyMeasurementType.isEmpty {
      try visitor.visitPackedEnumField(value: self.bodyMeasurementType, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetBodyMeasurementLogReq, rhs: Apisvr_GetBodyMeasurementLogReq) -> Bool {
    if lhs.offset != rhs.offset {return false}
    if lhs.limit != rhs.limit {return false}
    if lhs.bodyMeasurementType != rhs.bodyMeasurementType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_MeasurementChart: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MeasurementChart"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "title"),
    2: .same(proto: "logs"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.title)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.logs)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.title.isEmpty {
      try visitor.visitSingularStringField(value: self.title, fieldNumber: 1)
    }
    if !self.logs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.logs, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_MeasurementChart, rhs: Apisvr_MeasurementChart) -> Bool {
    if lhs.title != rhs.title {return false}
    if lhs.logs != rhs.logs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetBodyMeasurementLogResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetBodyMeasurementLogResp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "measurement_charts"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.measurementCharts)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.measurementCharts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.measurementCharts, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetBodyMeasurementLogResp, rhs: Apisvr_GetBodyMeasurementLogResp) -> Bool {
    if lhs.measurementCharts != rhs.measurementCharts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetBodyShapeReq: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetBodyShapeReq"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetBodyShapeReq, rhs: Apisvr_GetBodyShapeReq) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_BodyShape: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BodyShape"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "photo_url"),
    2: .same(proto: "value"),
    3: .same(proto: "date"),
    4: .same(proto: "unit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.photoURL)
      case 2: try decoder.decodeSingularFloatField(value: &self.value)
      case 3: try decoder.decodeSingularInt64Field(value: &self.date)
      case 4: try decoder.decodeSingularStringField(value: &self.unit)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.photoURL.isEmpty {
      try visitor.visitSingularStringField(value: self.photoURL, fieldNumber: 1)
    }
    if self.value != 0 {
      try visitor.visitSingularFloatField(value: self.value, fieldNumber: 2)
    }
    if self.date != 0 {
      try visitor.visitSingularInt64Field(value: self.date, fieldNumber: 3)
    }
    if !self.unit.isEmpty {
      try visitor.visitSingularStringField(value: self.unit, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_BodyShape, rhs: Apisvr_BodyShape) -> Bool {
    if lhs.photoURL != rhs.photoURL {return false}
    if lhs.value != rhs.value {return false}
    if lhs.date != rhs.date {return false}
    if lhs.unit != rhs.unit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apisvr_GetBodyShapeResp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetBodyShapeResp"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "body_shapes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.bodyShapes)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.bodyShapes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.bodyShapes, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apisvr_GetBodyShapeResp, rhs: Apisvr_GetBodyShapeResp) -> Bool {
    if lhs.bodyShapes != rhs.bodyShapes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
