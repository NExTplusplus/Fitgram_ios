//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: food_diary.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Dispatch
import Foundation
import SwiftGRPC
import SwiftProtobuf

internal protocol Apisvr_FoodDiaryServiceGetMealLogCalendarCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetMealLogCalendarCallBase: ClientCallUnaryBase<Apisvr_GetMealLogCalendarReq, Apisvr_GetMealLogCalendarResp>, Apisvr_FoodDiaryServiceGetMealLogCalendarCall {
  override class var method: String { return "/apisvr.FoodDiaryService/GetMealLogCalendar" }
}

internal protocol Apisvr_FoodDiaryServiceGetFoodDiaryCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetFoodDiaryCallBase: ClientCallUnaryBase<Apisvr_GetFoodDiaryReq, Apisvr_GetFoodDiaryResp>, Apisvr_FoodDiaryServiceGetFoodDiaryCall {
  override class var method: String { return "/apisvr.FoodDiaryService/GetFoodDiary" }
}

internal protocol Apisvr_FoodDiaryServiceGetMealLogCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetMealLogCallBase: ClientCallUnaryBase<Apisvr_GetMealLogReq, Apisvr_GetMealLogResp>, Apisvr_FoodDiaryServiceGetMealLogCall {
  override class var method: String { return "/apisvr.FoodDiaryService/GetMealLog" }
}

internal protocol Apisvr_FoodDiaryServiceGetFoodLogDetailCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetFoodLogDetailCallBase: ClientCallUnaryBase<Apisvr_GetFoodLogDetailReq, Apisvr_GetFoodLogDetailResp>, Apisvr_FoodDiaryServiceGetFoodLogDetailCall {
  override class var method: String { return "/apisvr.FoodDiaryService/GetFoodLogDetail" }
}

internal protocol Apisvr_FoodDiaryServiceCreateMealLogCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceCreateMealLogCallBase: ClientCallUnaryBase<Apisvr_CreateMealLogReq, Apisvr_CreateMealLogResp>, Apisvr_FoodDiaryServiceCreateMealLogCall {
  override class var method: String { return "/apisvr.FoodDiaryService/CreateMealLog" }
}

internal protocol Apisvr_FoodDiaryServiceUpdateMealLogCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceUpdateMealLogCallBase: ClientCallUnaryBase<Apisvr_UpdateMealLogReq, Apisvr_UpdateMealLogResp>, Apisvr_FoodDiaryServiceUpdateMealLogCall {
  override class var method: String { return "/apisvr.FoodDiaryService/UpdateMealLog" }
}

internal protocol Apisvr_FoodDiaryServiceDeleteMealLogCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceDeleteMealLogCallBase: ClientCallUnaryBase<Apisvr_DeleteMealLogReq, Apisvr_DeleteMealLogResp>, Apisvr_FoodDiaryServiceDeleteMealLogCall {
  override class var method: String { return "/apisvr.FoodDiaryService/DeleteMealLog" }
}

internal protocol Apisvr_FoodDiaryServiceRecognitionCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceRecognitionCallBase: ClientCallUnaryBase<Apisvr_RecognitionReq, Apisvr_RecognitionResp>, Apisvr_FoodDiaryServiceRecognitionCall {
  override class var method: String { return "/apisvr.FoodDiaryService/Recognition" }
}

internal protocol Apisvr_FoodDiaryServiceGetRecognitionResultCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetRecognitionResultCallBase: ClientCallUnaryBase<Apisvr_GetRecognitionResultReq, Apisvr_GetRecognitionResultResp>, Apisvr_FoodDiaryServiceGetRecognitionResultCall {
  override class var method: String { return "/apisvr.FoodDiaryService/GetRecognitionResult" }
}

internal protocol Apisvr_FoodDiaryServiceSearchCall: ClientCallUnary {}

fileprivate final class Apisvr_FoodDiaryServiceSearchCallBase: ClientCallUnaryBase<Apisvr_SearchReq, Apisvr_SearchResp>, Apisvr_FoodDiaryServiceSearchCall {
  override class var method: String { return "/apisvr.FoodDiaryService/Search" }
}


/// Instantiate Apisvr_FoodDiaryServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Apisvr_FoodDiaryServiceService: ServiceClient {
  /// Synchronous. Unary.
  func getMealLogCalendar(_ request: Apisvr_GetMealLogCalendarReq, metadata customMetadata: Metadata) throws -> Apisvr_GetMealLogCalendarResp
  /// Asynchronous. Unary.
  @discardableResult
  func getMealLogCalendar(_ request: Apisvr_GetMealLogCalendarReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetMealLogCalendarResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetMealLogCalendarCall

  /// Synchronous. Unary.
  func getFoodDiary(_ request: Apisvr_GetFoodDiaryReq, metadata customMetadata: Metadata) throws -> Apisvr_GetFoodDiaryResp
  /// Asynchronous. Unary.
  @discardableResult
  func getFoodDiary(_ request: Apisvr_GetFoodDiaryReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetFoodDiaryResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetFoodDiaryCall

  /// Synchronous. Unary.
  func getMealLog(_ request: Apisvr_GetMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_GetMealLogResp
  /// Asynchronous. Unary.
  @discardableResult
  func getMealLog(_ request: Apisvr_GetMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetMealLogCall

  /// Synchronous. Unary.
  func getFoodLogDetail(_ request: Apisvr_GetFoodLogDetailReq, metadata customMetadata: Metadata) throws -> Apisvr_GetFoodLogDetailResp
  /// Asynchronous. Unary.
  @discardableResult
  func getFoodLogDetail(_ request: Apisvr_GetFoodLogDetailReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetFoodLogDetailResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetFoodLogDetailCall

  /// Synchronous. Unary.
  func createMealLog(_ request: Apisvr_CreateMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_CreateMealLogResp
  /// Asynchronous. Unary.
  @discardableResult
  func createMealLog(_ request: Apisvr_CreateMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_CreateMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceCreateMealLogCall

  /// Synchronous. Unary.
  func updateMealLog(_ request: Apisvr_UpdateMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_UpdateMealLogResp
  /// Asynchronous. Unary.
  @discardableResult
  func updateMealLog(_ request: Apisvr_UpdateMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_UpdateMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceUpdateMealLogCall

  /// Synchronous. Unary.
  func deleteMealLog(_ request: Apisvr_DeleteMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_DeleteMealLogResp
  /// Asynchronous. Unary.
  @discardableResult
  func deleteMealLog(_ request: Apisvr_DeleteMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_DeleteMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceDeleteMealLogCall

  /// Synchronous. Unary.
  func recognition(_ request: Apisvr_RecognitionReq, metadata customMetadata: Metadata) throws -> Apisvr_RecognitionResp
  /// Asynchronous. Unary.
  @discardableResult
  func recognition(_ request: Apisvr_RecognitionReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_RecognitionResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceRecognitionCall

  /// Synchronous. Unary.
  func getRecognitionResult(_ request: Apisvr_GetRecognitionResultReq, metadata customMetadata: Metadata) throws -> Apisvr_GetRecognitionResultResp
  /// Asynchronous. Unary.
  @discardableResult
  func getRecognitionResult(_ request: Apisvr_GetRecognitionResultReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetRecognitionResultResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetRecognitionResultCall

  /// Synchronous. Unary.
  func search(_ request: Apisvr_SearchReq, metadata customMetadata: Metadata) throws -> Apisvr_SearchResp
  /// Asynchronous. Unary.
  @discardableResult
  func search(_ request: Apisvr_SearchReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_SearchResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceSearchCall

}

internal extension Apisvr_FoodDiaryServiceService {
  /// Synchronous. Unary.
  func getMealLogCalendar(_ request: Apisvr_GetMealLogCalendarReq) throws -> Apisvr_GetMealLogCalendarResp {
    return try self.getMealLogCalendar(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getMealLogCalendar(_ request: Apisvr_GetMealLogCalendarReq, completion: @escaping (Apisvr_GetMealLogCalendarResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetMealLogCalendarCall {
    return try self.getMealLogCalendar(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getFoodDiary(_ request: Apisvr_GetFoodDiaryReq) throws -> Apisvr_GetFoodDiaryResp {
    return try self.getFoodDiary(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getFoodDiary(_ request: Apisvr_GetFoodDiaryReq, completion: @escaping (Apisvr_GetFoodDiaryResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetFoodDiaryCall {
    return try self.getFoodDiary(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getMealLog(_ request: Apisvr_GetMealLogReq) throws -> Apisvr_GetMealLogResp {
    return try self.getMealLog(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getMealLog(_ request: Apisvr_GetMealLogReq, completion: @escaping (Apisvr_GetMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetMealLogCall {
    return try self.getMealLog(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getFoodLogDetail(_ request: Apisvr_GetFoodLogDetailReq) throws -> Apisvr_GetFoodLogDetailResp {
    return try self.getFoodLogDetail(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getFoodLogDetail(_ request: Apisvr_GetFoodLogDetailReq, completion: @escaping (Apisvr_GetFoodLogDetailResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetFoodLogDetailCall {
    return try self.getFoodLogDetail(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func createMealLog(_ request: Apisvr_CreateMealLogReq) throws -> Apisvr_CreateMealLogResp {
    return try self.createMealLog(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func createMealLog(_ request: Apisvr_CreateMealLogReq, completion: @escaping (Apisvr_CreateMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceCreateMealLogCall {
    return try self.createMealLog(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func updateMealLog(_ request: Apisvr_UpdateMealLogReq) throws -> Apisvr_UpdateMealLogResp {
    return try self.updateMealLog(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func updateMealLog(_ request: Apisvr_UpdateMealLogReq, completion: @escaping (Apisvr_UpdateMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceUpdateMealLogCall {
    return try self.updateMealLog(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func deleteMealLog(_ request: Apisvr_DeleteMealLogReq) throws -> Apisvr_DeleteMealLogResp {
    return try self.deleteMealLog(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func deleteMealLog(_ request: Apisvr_DeleteMealLogReq, completion: @escaping (Apisvr_DeleteMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceDeleteMealLogCall {
    return try self.deleteMealLog(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func recognition(_ request: Apisvr_RecognitionReq) throws -> Apisvr_RecognitionResp {
    return try self.recognition(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func recognition(_ request: Apisvr_RecognitionReq, completion: @escaping (Apisvr_RecognitionResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceRecognitionCall {
    return try self.recognition(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getRecognitionResult(_ request: Apisvr_GetRecognitionResultReq) throws -> Apisvr_GetRecognitionResultResp {
    return try self.getRecognitionResult(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getRecognitionResult(_ request: Apisvr_GetRecognitionResultReq, completion: @escaping (Apisvr_GetRecognitionResultResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetRecognitionResultCall {
    return try self.getRecognitionResult(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func search(_ request: Apisvr_SearchReq) throws -> Apisvr_SearchResp {
    return try self.search(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func search(_ request: Apisvr_SearchReq, completion: @escaping (Apisvr_SearchResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceSearchCall {
    return try self.search(request, metadata: self.metadata, completion: completion)
  }

}

internal final class Apisvr_FoodDiaryServiceServiceClient: ServiceClientBase, Apisvr_FoodDiaryServiceService {
  /// Synchronous. Unary.
  internal func getMealLogCalendar(_ request: Apisvr_GetMealLogCalendarReq, metadata customMetadata: Metadata) throws -> Apisvr_GetMealLogCalendarResp {
    return try Apisvr_FoodDiaryServiceGetMealLogCalendarCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getMealLogCalendar(_ request: Apisvr_GetMealLogCalendarReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetMealLogCalendarResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetMealLogCalendarCall {
    return try Apisvr_FoodDiaryServiceGetMealLogCalendarCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getFoodDiary(_ request: Apisvr_GetFoodDiaryReq, metadata customMetadata: Metadata) throws -> Apisvr_GetFoodDiaryResp {
    return try Apisvr_FoodDiaryServiceGetFoodDiaryCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getFoodDiary(_ request: Apisvr_GetFoodDiaryReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetFoodDiaryResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetFoodDiaryCall {
    return try Apisvr_FoodDiaryServiceGetFoodDiaryCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getMealLog(_ request: Apisvr_GetMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_GetMealLogResp {
    return try Apisvr_FoodDiaryServiceGetMealLogCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getMealLog(_ request: Apisvr_GetMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetMealLogCall {
    return try Apisvr_FoodDiaryServiceGetMealLogCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getFoodLogDetail(_ request: Apisvr_GetFoodLogDetailReq, metadata customMetadata: Metadata) throws -> Apisvr_GetFoodLogDetailResp {
    return try Apisvr_FoodDiaryServiceGetFoodLogDetailCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getFoodLogDetail(_ request: Apisvr_GetFoodLogDetailReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetFoodLogDetailResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetFoodLogDetailCall {
    return try Apisvr_FoodDiaryServiceGetFoodLogDetailCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func createMealLog(_ request: Apisvr_CreateMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_CreateMealLogResp {
    return try Apisvr_FoodDiaryServiceCreateMealLogCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func createMealLog(_ request: Apisvr_CreateMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_CreateMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceCreateMealLogCall {
    return try Apisvr_FoodDiaryServiceCreateMealLogCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func updateMealLog(_ request: Apisvr_UpdateMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_UpdateMealLogResp {
    return try Apisvr_FoodDiaryServiceUpdateMealLogCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func updateMealLog(_ request: Apisvr_UpdateMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_UpdateMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceUpdateMealLogCall {
    return try Apisvr_FoodDiaryServiceUpdateMealLogCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func deleteMealLog(_ request: Apisvr_DeleteMealLogReq, metadata customMetadata: Metadata) throws -> Apisvr_DeleteMealLogResp {
    return try Apisvr_FoodDiaryServiceDeleteMealLogCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func deleteMealLog(_ request: Apisvr_DeleteMealLogReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_DeleteMealLogResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceDeleteMealLogCall {
    return try Apisvr_FoodDiaryServiceDeleteMealLogCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func recognition(_ request: Apisvr_RecognitionReq, metadata customMetadata: Metadata) throws -> Apisvr_RecognitionResp {
    return try Apisvr_FoodDiaryServiceRecognitionCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func recognition(_ request: Apisvr_RecognitionReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_RecognitionResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceRecognitionCall {
    return try Apisvr_FoodDiaryServiceRecognitionCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getRecognitionResult(_ request: Apisvr_GetRecognitionResultReq, metadata customMetadata: Metadata) throws -> Apisvr_GetRecognitionResultResp {
    return try Apisvr_FoodDiaryServiceGetRecognitionResultCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getRecognitionResult(_ request: Apisvr_GetRecognitionResultReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetRecognitionResultResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceGetRecognitionResultCall {
    return try Apisvr_FoodDiaryServiceGetRecognitionResultCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func search(_ request: Apisvr_SearchReq, metadata customMetadata: Metadata) throws -> Apisvr_SearchResp {
    return try Apisvr_FoodDiaryServiceSearchCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func search(_ request: Apisvr_SearchReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_SearchResp?, CallResult) -> Void) throws -> Apisvr_FoodDiaryServiceSearchCall {
    return try Apisvr_FoodDiaryServiceSearchCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol Apisvr_FoodDiaryServiceProvider: ServiceProvider {
  func getMealLogCalendar(request: Apisvr_GetMealLogCalendarReq, session: Apisvr_FoodDiaryServiceGetMealLogCalendarSession) throws -> Apisvr_GetMealLogCalendarResp
  func getFoodDiary(request: Apisvr_GetFoodDiaryReq, session: Apisvr_FoodDiaryServiceGetFoodDiarySession) throws -> Apisvr_GetFoodDiaryResp
  func getMealLog(request: Apisvr_GetMealLogReq, session: Apisvr_FoodDiaryServiceGetMealLogSession) throws -> Apisvr_GetMealLogResp
  func getFoodLogDetail(request: Apisvr_GetFoodLogDetailReq, session: Apisvr_FoodDiaryServiceGetFoodLogDetailSession) throws -> Apisvr_GetFoodLogDetailResp
  func createMealLog(request: Apisvr_CreateMealLogReq, session: Apisvr_FoodDiaryServiceCreateMealLogSession) throws -> Apisvr_CreateMealLogResp
  func updateMealLog(request: Apisvr_UpdateMealLogReq, session: Apisvr_FoodDiaryServiceUpdateMealLogSession) throws -> Apisvr_UpdateMealLogResp
  func deleteMealLog(request: Apisvr_DeleteMealLogReq, session: Apisvr_FoodDiaryServiceDeleteMealLogSession) throws -> Apisvr_DeleteMealLogResp
  func recognition(request: Apisvr_RecognitionReq, session: Apisvr_FoodDiaryServiceRecognitionSession) throws -> Apisvr_RecognitionResp
  func getRecognitionResult(request: Apisvr_GetRecognitionResultReq, session: Apisvr_FoodDiaryServiceGetRecognitionResultSession) throws -> Apisvr_GetRecognitionResultResp
  func search(request: Apisvr_SearchReq, session: Apisvr_FoodDiaryServiceSearchSession) throws -> Apisvr_SearchResp
}

extension Apisvr_FoodDiaryServiceProvider {
  internal var serviceName: String { return "apisvr.FoodDiaryService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/apisvr.FoodDiaryService/GetMealLogCalendar":
      return try Apisvr_FoodDiaryServiceGetMealLogCalendarSessionBase(
        handler: handler,
        providerBlock: { try self.getMealLogCalendar(request: $0, session: $1 as! Apisvr_FoodDiaryServiceGetMealLogCalendarSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/GetFoodDiary":
      return try Apisvr_FoodDiaryServiceGetFoodDiarySessionBase(
        handler: handler,
        providerBlock: { try self.getFoodDiary(request: $0, session: $1 as! Apisvr_FoodDiaryServiceGetFoodDiarySessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/GetMealLog":
      return try Apisvr_FoodDiaryServiceGetMealLogSessionBase(
        handler: handler,
        providerBlock: { try self.getMealLog(request: $0, session: $1 as! Apisvr_FoodDiaryServiceGetMealLogSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/GetFoodLogDetail":
      return try Apisvr_FoodDiaryServiceGetFoodLogDetailSessionBase(
        handler: handler,
        providerBlock: { try self.getFoodLogDetail(request: $0, session: $1 as! Apisvr_FoodDiaryServiceGetFoodLogDetailSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/CreateMealLog":
      return try Apisvr_FoodDiaryServiceCreateMealLogSessionBase(
        handler: handler,
        providerBlock: { try self.createMealLog(request: $0, session: $1 as! Apisvr_FoodDiaryServiceCreateMealLogSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/UpdateMealLog":
      return try Apisvr_FoodDiaryServiceUpdateMealLogSessionBase(
        handler: handler,
        providerBlock: { try self.updateMealLog(request: $0, session: $1 as! Apisvr_FoodDiaryServiceUpdateMealLogSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/DeleteMealLog":
      return try Apisvr_FoodDiaryServiceDeleteMealLogSessionBase(
        handler: handler,
        providerBlock: { try self.deleteMealLog(request: $0, session: $1 as! Apisvr_FoodDiaryServiceDeleteMealLogSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/Recognition":
      return try Apisvr_FoodDiaryServiceRecognitionSessionBase(
        handler: handler,
        providerBlock: { try self.recognition(request: $0, session: $1 as! Apisvr_FoodDiaryServiceRecognitionSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/GetRecognitionResult":
      return try Apisvr_FoodDiaryServiceGetRecognitionResultSessionBase(
        handler: handler,
        providerBlock: { try self.getRecognitionResult(request: $0, session: $1 as! Apisvr_FoodDiaryServiceGetRecognitionResultSessionBase) })
          .run()
    case "/apisvr.FoodDiaryService/Search":
      return try Apisvr_FoodDiaryServiceSearchSessionBase(
        handler: handler,
        providerBlock: { try self.search(request: $0, session: $1 as! Apisvr_FoodDiaryServiceSearchSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol Apisvr_FoodDiaryServiceGetMealLogCalendarSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetMealLogCalendarSessionBase: ServerSessionUnaryBase<Apisvr_GetMealLogCalendarReq, Apisvr_GetMealLogCalendarResp>, Apisvr_FoodDiaryServiceGetMealLogCalendarSession {}

internal protocol Apisvr_FoodDiaryServiceGetFoodDiarySession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetFoodDiarySessionBase: ServerSessionUnaryBase<Apisvr_GetFoodDiaryReq, Apisvr_GetFoodDiaryResp>, Apisvr_FoodDiaryServiceGetFoodDiarySession {}

internal protocol Apisvr_FoodDiaryServiceGetMealLogSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetMealLogSessionBase: ServerSessionUnaryBase<Apisvr_GetMealLogReq, Apisvr_GetMealLogResp>, Apisvr_FoodDiaryServiceGetMealLogSession {}

internal protocol Apisvr_FoodDiaryServiceGetFoodLogDetailSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetFoodLogDetailSessionBase: ServerSessionUnaryBase<Apisvr_GetFoodLogDetailReq, Apisvr_GetFoodLogDetailResp>, Apisvr_FoodDiaryServiceGetFoodLogDetailSession {}

internal protocol Apisvr_FoodDiaryServiceCreateMealLogSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceCreateMealLogSessionBase: ServerSessionUnaryBase<Apisvr_CreateMealLogReq, Apisvr_CreateMealLogResp>, Apisvr_FoodDiaryServiceCreateMealLogSession {}

internal protocol Apisvr_FoodDiaryServiceUpdateMealLogSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceUpdateMealLogSessionBase: ServerSessionUnaryBase<Apisvr_UpdateMealLogReq, Apisvr_UpdateMealLogResp>, Apisvr_FoodDiaryServiceUpdateMealLogSession {}

internal protocol Apisvr_FoodDiaryServiceDeleteMealLogSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceDeleteMealLogSessionBase: ServerSessionUnaryBase<Apisvr_DeleteMealLogReq, Apisvr_DeleteMealLogResp>, Apisvr_FoodDiaryServiceDeleteMealLogSession {}

internal protocol Apisvr_FoodDiaryServiceRecognitionSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceRecognitionSessionBase: ServerSessionUnaryBase<Apisvr_RecognitionReq, Apisvr_RecognitionResp>, Apisvr_FoodDiaryServiceRecognitionSession {}

internal protocol Apisvr_FoodDiaryServiceGetRecognitionResultSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceGetRecognitionResultSessionBase: ServerSessionUnaryBase<Apisvr_GetRecognitionResultReq, Apisvr_GetRecognitionResultResp>, Apisvr_FoodDiaryServiceGetRecognitionResultSession {}

internal protocol Apisvr_FoodDiaryServiceSearchSession: ServerSessionUnary {}

fileprivate final class Apisvr_FoodDiaryServiceSearchSessionBase: ServerSessionUnaryBase<Apisvr_SearchReq, Apisvr_SearchResp>, Apisvr_FoodDiaryServiceSearchSession {}

