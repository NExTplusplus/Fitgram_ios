//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: login.proto
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

internal protocol Apisvr_LoginServiceAnonymousLoginCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceAnonymousLoginCallBase: ClientCallUnaryBase<Apisvr_AnonymousLoginReq, Apisvr_AnonymousLoginResp>, Apisvr_LoginServiceAnonymousLoginCall {
  override class var method: String { return "/apisvr.LoginService/AnonymousLogin" }
}

internal protocol Apisvr_LoginServiceAppLoginCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceAppLoginCallBase: ClientCallUnaryBase<Apisvr_AppLoginReq, Apisvr_AppLoginResp>, Apisvr_LoginServiceAppLoginCall {
  override class var method: String { return "/apisvr.LoginService/AppLogin" }
}

internal protocol Apisvr_LoginServiceOneTimePasswordLoginCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceOneTimePasswordLoginCallBase: ClientCallUnaryBase<Apisvr_OneTimePasswordLoginReq, Apisvr_OneTimePasswordLoginResp>, Apisvr_LoginServiceOneTimePasswordLoginCall {
  override class var method: String { return "/apisvr.LoginService/OneTimePasswordLogin" }
}

internal protocol Apisvr_LoginServiceThirdPartyLoginCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceThirdPartyLoginCallBase: ClientCallUnaryBase<Apisvr_ThirdPartyLoginReq, Apisvr_ThirdPartyLoginResp>, Apisvr_LoginServiceThirdPartyLoginCall {
  override class var method: String { return "/apisvr.LoginService/ThirdPartyLogin" }
}

internal protocol Apisvr_LoginServiceVerifyPhoneNumCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceVerifyPhoneNumCallBase: ClientCallUnaryBase<Apisvr_VerifyPhoneNumReq, Apisvr_VerifyPhoneNumResp>, Apisvr_LoginServiceVerifyPhoneNumCall {
  override class var method: String { return "/apisvr.LoginService/VerifyPhoneNum" }
}

internal protocol Apisvr_LoginServiceRegisterWithPassCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceRegisterWithPassCallBase: ClientCallUnaryBase<Apisvr_RegisterWithPassReq, Apisvr_RegisterWithPassResp>, Apisvr_LoginServiceRegisterWithPassCall {
  override class var method: String { return "/apisvr.LoginService/RegisterWithPass" }
}

internal protocol Apisvr_LoginServiceGetOneTimePasswordCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceGetOneTimePasswordCallBase: ClientCallUnaryBase<Apisvr_GetOneTimePasswordReq, Apisvr_GetOneTimePasswordResp>, Apisvr_LoginServiceGetOneTimePasswordCall {
  override class var method: String { return "/apisvr.LoginService/GetOneTimePassword" }
}

internal protocol Apisvr_LoginServiceVerifyOneTimePasswordCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceVerifyOneTimePasswordCallBase: ClientCallUnaryBase<Apisvr_VerifyOneTimePasswordReq, Apisvr_VerifyOneTimePasswordResp>, Apisvr_LoginServiceVerifyOneTimePasswordCall {
  override class var method: String { return "/apisvr.LoginService/VerifyOneTimePassword" }
}

internal protocol Apisvr_LoginServiceResetPasswordCall: ClientCallUnary {}

fileprivate final class Apisvr_LoginServiceResetPasswordCallBase: ClientCallUnaryBase<Apisvr_ResetPasswordReq, Apisvr_ResetPasswordResp>, Apisvr_LoginServiceResetPasswordCall {
  override class var method: String { return "/apisvr.LoginService/ResetPassword" }
}


/// Instantiate Apisvr_LoginServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol Apisvr_LoginServiceService: ServiceClient {
  /// Synchronous. Unary.
  func anonymousLogin(_ request: Apisvr_AnonymousLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_AnonymousLoginResp
  /// Asynchronous. Unary.
  @discardableResult
  func anonymousLogin(_ request: Apisvr_AnonymousLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_AnonymousLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceAnonymousLoginCall

  /// Synchronous. Unary.
  func appLogin(_ request: Apisvr_AppLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_AppLoginResp
  /// Asynchronous. Unary.
  @discardableResult
  func appLogin(_ request: Apisvr_AppLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_AppLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceAppLoginCall

  /// Synchronous. Unary.
  func oneTimePasswordLogin(_ request: Apisvr_OneTimePasswordLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_OneTimePasswordLoginResp
  /// Asynchronous. Unary.
  @discardableResult
  func oneTimePasswordLogin(_ request: Apisvr_OneTimePasswordLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_OneTimePasswordLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceOneTimePasswordLoginCall

  /// Synchronous. Unary.
  func thirdPartyLogin(_ request: Apisvr_ThirdPartyLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_ThirdPartyLoginResp
  /// Asynchronous. Unary.
  @discardableResult
  func thirdPartyLogin(_ request: Apisvr_ThirdPartyLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_ThirdPartyLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceThirdPartyLoginCall

  /// Synchronous. Unary.
  func verifyPhoneNum(_ request: Apisvr_VerifyPhoneNumReq, metadata customMetadata: Metadata) throws -> Apisvr_VerifyPhoneNumResp
  /// Asynchronous. Unary.
  @discardableResult
  func verifyPhoneNum(_ request: Apisvr_VerifyPhoneNumReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_VerifyPhoneNumResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceVerifyPhoneNumCall

  /// Synchronous. Unary.
  func registerWithPass(_ request: Apisvr_RegisterWithPassReq, metadata customMetadata: Metadata) throws -> Apisvr_RegisterWithPassResp
  /// Asynchronous. Unary.
  @discardableResult
  func registerWithPass(_ request: Apisvr_RegisterWithPassReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_RegisterWithPassResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceRegisterWithPassCall

  /// Synchronous. Unary.
  func getOneTimePassword(_ request: Apisvr_GetOneTimePasswordReq, metadata customMetadata: Metadata) throws -> Apisvr_GetOneTimePasswordResp
  /// Asynchronous. Unary.
  @discardableResult
  func getOneTimePassword(_ request: Apisvr_GetOneTimePasswordReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetOneTimePasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceGetOneTimePasswordCall

  /// Synchronous. Unary.
  func verifyOneTimePassword(_ request: Apisvr_VerifyOneTimePasswordReq, metadata customMetadata: Metadata) throws -> Apisvr_VerifyOneTimePasswordResp
  /// Asynchronous. Unary.
  @discardableResult
  func verifyOneTimePassword(_ request: Apisvr_VerifyOneTimePasswordReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_VerifyOneTimePasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceVerifyOneTimePasswordCall

  /// Synchronous. Unary.
  func resetPassword(_ request: Apisvr_ResetPasswordReq, metadata customMetadata: Metadata) throws -> Apisvr_ResetPasswordResp
  /// Asynchronous. Unary.
  @discardableResult
  func resetPassword(_ request: Apisvr_ResetPasswordReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_ResetPasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceResetPasswordCall

}

internal extension Apisvr_LoginServiceService {
  /// Synchronous. Unary.
  func anonymousLogin(_ request: Apisvr_AnonymousLoginReq) throws -> Apisvr_AnonymousLoginResp {
    return try self.anonymousLogin(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func anonymousLogin(_ request: Apisvr_AnonymousLoginReq, completion: @escaping (Apisvr_AnonymousLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceAnonymousLoginCall {
    return try self.anonymousLogin(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func appLogin(_ request: Apisvr_AppLoginReq) throws -> Apisvr_AppLoginResp {
    return try self.appLogin(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func appLogin(_ request: Apisvr_AppLoginReq, completion: @escaping (Apisvr_AppLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceAppLoginCall {
    return try self.appLogin(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func oneTimePasswordLogin(_ request: Apisvr_OneTimePasswordLoginReq) throws -> Apisvr_OneTimePasswordLoginResp {
    return try self.oneTimePasswordLogin(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func oneTimePasswordLogin(_ request: Apisvr_OneTimePasswordLoginReq, completion: @escaping (Apisvr_OneTimePasswordLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceOneTimePasswordLoginCall {
    return try self.oneTimePasswordLogin(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func thirdPartyLogin(_ request: Apisvr_ThirdPartyLoginReq) throws -> Apisvr_ThirdPartyLoginResp {
    return try self.thirdPartyLogin(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func thirdPartyLogin(_ request: Apisvr_ThirdPartyLoginReq, completion: @escaping (Apisvr_ThirdPartyLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceThirdPartyLoginCall {
    return try self.thirdPartyLogin(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func verifyPhoneNum(_ request: Apisvr_VerifyPhoneNumReq) throws -> Apisvr_VerifyPhoneNumResp {
    return try self.verifyPhoneNum(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func verifyPhoneNum(_ request: Apisvr_VerifyPhoneNumReq, completion: @escaping (Apisvr_VerifyPhoneNumResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceVerifyPhoneNumCall {
    return try self.verifyPhoneNum(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func registerWithPass(_ request: Apisvr_RegisterWithPassReq) throws -> Apisvr_RegisterWithPassResp {
    return try self.registerWithPass(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func registerWithPass(_ request: Apisvr_RegisterWithPassReq, completion: @escaping (Apisvr_RegisterWithPassResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceRegisterWithPassCall {
    return try self.registerWithPass(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func getOneTimePassword(_ request: Apisvr_GetOneTimePasswordReq) throws -> Apisvr_GetOneTimePasswordResp {
    return try self.getOneTimePassword(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func getOneTimePassword(_ request: Apisvr_GetOneTimePasswordReq, completion: @escaping (Apisvr_GetOneTimePasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceGetOneTimePasswordCall {
    return try self.getOneTimePassword(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func verifyOneTimePassword(_ request: Apisvr_VerifyOneTimePasswordReq) throws -> Apisvr_VerifyOneTimePasswordResp {
    return try self.verifyOneTimePassword(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func verifyOneTimePassword(_ request: Apisvr_VerifyOneTimePasswordReq, completion: @escaping (Apisvr_VerifyOneTimePasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceVerifyOneTimePasswordCall {
    return try self.verifyOneTimePassword(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func resetPassword(_ request: Apisvr_ResetPasswordReq) throws -> Apisvr_ResetPasswordResp {
    return try self.resetPassword(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  func resetPassword(_ request: Apisvr_ResetPasswordReq, completion: @escaping (Apisvr_ResetPasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceResetPasswordCall {
    return try self.resetPassword(request, metadata: self.metadata, completion: completion)
  }

}

internal final class Apisvr_LoginServiceServiceClient: ServiceClientBase, Apisvr_LoginServiceService {
  /// Synchronous. Unary.
  internal func anonymousLogin(_ request: Apisvr_AnonymousLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_AnonymousLoginResp {
    return try Apisvr_LoginServiceAnonymousLoginCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func anonymousLogin(_ request: Apisvr_AnonymousLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_AnonymousLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceAnonymousLoginCall {
    return try Apisvr_LoginServiceAnonymousLoginCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func appLogin(_ request: Apisvr_AppLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_AppLoginResp {
    return try Apisvr_LoginServiceAppLoginCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func appLogin(_ request: Apisvr_AppLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_AppLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceAppLoginCall {
    return try Apisvr_LoginServiceAppLoginCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func oneTimePasswordLogin(_ request: Apisvr_OneTimePasswordLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_OneTimePasswordLoginResp {
    return try Apisvr_LoginServiceOneTimePasswordLoginCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func oneTimePasswordLogin(_ request: Apisvr_OneTimePasswordLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_OneTimePasswordLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceOneTimePasswordLoginCall {
    return try Apisvr_LoginServiceOneTimePasswordLoginCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func thirdPartyLogin(_ request: Apisvr_ThirdPartyLoginReq, metadata customMetadata: Metadata) throws -> Apisvr_ThirdPartyLoginResp {
    return try Apisvr_LoginServiceThirdPartyLoginCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func thirdPartyLogin(_ request: Apisvr_ThirdPartyLoginReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_ThirdPartyLoginResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceThirdPartyLoginCall {
    return try Apisvr_LoginServiceThirdPartyLoginCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func verifyPhoneNum(_ request: Apisvr_VerifyPhoneNumReq, metadata customMetadata: Metadata) throws -> Apisvr_VerifyPhoneNumResp {
    return try Apisvr_LoginServiceVerifyPhoneNumCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func verifyPhoneNum(_ request: Apisvr_VerifyPhoneNumReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_VerifyPhoneNumResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceVerifyPhoneNumCall {
    return try Apisvr_LoginServiceVerifyPhoneNumCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func registerWithPass(_ request: Apisvr_RegisterWithPassReq, metadata customMetadata: Metadata) throws -> Apisvr_RegisterWithPassResp {
    return try Apisvr_LoginServiceRegisterWithPassCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func registerWithPass(_ request: Apisvr_RegisterWithPassReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_RegisterWithPassResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceRegisterWithPassCall {
    return try Apisvr_LoginServiceRegisterWithPassCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getOneTimePassword(_ request: Apisvr_GetOneTimePasswordReq, metadata customMetadata: Metadata) throws -> Apisvr_GetOneTimePasswordResp {
    return try Apisvr_LoginServiceGetOneTimePasswordCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func getOneTimePassword(_ request: Apisvr_GetOneTimePasswordReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_GetOneTimePasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceGetOneTimePasswordCall {
    return try Apisvr_LoginServiceGetOneTimePasswordCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func verifyOneTimePassword(_ request: Apisvr_VerifyOneTimePasswordReq, metadata customMetadata: Metadata) throws -> Apisvr_VerifyOneTimePasswordResp {
    return try Apisvr_LoginServiceVerifyOneTimePasswordCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func verifyOneTimePassword(_ request: Apisvr_VerifyOneTimePasswordReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_VerifyOneTimePasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceVerifyOneTimePasswordCall {
    return try Apisvr_LoginServiceVerifyOneTimePasswordCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func resetPassword(_ request: Apisvr_ResetPasswordReq, metadata customMetadata: Metadata) throws -> Apisvr_ResetPasswordResp {
    return try Apisvr_LoginServiceResetPasswordCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  @discardableResult
  internal func resetPassword(_ request: Apisvr_ResetPasswordReq, metadata customMetadata: Metadata, completion: @escaping (Apisvr_ResetPasswordResp?, CallResult) -> Void) throws -> Apisvr_LoginServiceResetPasswordCall {
    return try Apisvr_LoginServiceResetPasswordCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol Apisvr_LoginServiceProvider: ServiceProvider {
  func anonymousLogin(request: Apisvr_AnonymousLoginReq, session: Apisvr_LoginServiceAnonymousLoginSession) throws -> Apisvr_AnonymousLoginResp
  func appLogin(request: Apisvr_AppLoginReq, session: Apisvr_LoginServiceAppLoginSession) throws -> Apisvr_AppLoginResp
  func oneTimePasswordLogin(request: Apisvr_OneTimePasswordLoginReq, session: Apisvr_LoginServiceOneTimePasswordLoginSession) throws -> Apisvr_OneTimePasswordLoginResp
  func thirdPartyLogin(request: Apisvr_ThirdPartyLoginReq, session: Apisvr_LoginServiceThirdPartyLoginSession) throws -> Apisvr_ThirdPartyLoginResp
  func verifyPhoneNum(request: Apisvr_VerifyPhoneNumReq, session: Apisvr_LoginServiceVerifyPhoneNumSession) throws -> Apisvr_VerifyPhoneNumResp
  func registerWithPass(request: Apisvr_RegisterWithPassReq, session: Apisvr_LoginServiceRegisterWithPassSession) throws -> Apisvr_RegisterWithPassResp
  func getOneTimePassword(request: Apisvr_GetOneTimePasswordReq, session: Apisvr_LoginServiceGetOneTimePasswordSession) throws -> Apisvr_GetOneTimePasswordResp
  func verifyOneTimePassword(request: Apisvr_VerifyOneTimePasswordReq, session: Apisvr_LoginServiceVerifyOneTimePasswordSession) throws -> Apisvr_VerifyOneTimePasswordResp
  func resetPassword(request: Apisvr_ResetPasswordReq, session: Apisvr_LoginServiceResetPasswordSession) throws -> Apisvr_ResetPasswordResp
}

extension Apisvr_LoginServiceProvider {
  internal var serviceName: String { return "apisvr.LoginService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/apisvr.LoginService/AnonymousLogin":
      return try Apisvr_LoginServiceAnonymousLoginSessionBase(
        handler: handler,
        providerBlock: { try self.anonymousLogin(request: $0, session: $1 as! Apisvr_LoginServiceAnonymousLoginSessionBase) })
          .run()
    case "/apisvr.LoginService/AppLogin":
      return try Apisvr_LoginServiceAppLoginSessionBase(
        handler: handler,
        providerBlock: { try self.appLogin(request: $0, session: $1 as! Apisvr_LoginServiceAppLoginSessionBase) })
          .run()
    case "/apisvr.LoginService/OneTimePasswordLogin":
      return try Apisvr_LoginServiceOneTimePasswordLoginSessionBase(
        handler: handler,
        providerBlock: { try self.oneTimePasswordLogin(request: $0, session: $1 as! Apisvr_LoginServiceOneTimePasswordLoginSessionBase) })
          .run()
    case "/apisvr.LoginService/ThirdPartyLogin":
      return try Apisvr_LoginServiceThirdPartyLoginSessionBase(
        handler: handler,
        providerBlock: { try self.thirdPartyLogin(request: $0, session: $1 as! Apisvr_LoginServiceThirdPartyLoginSessionBase) })
          .run()
    case "/apisvr.LoginService/VerifyPhoneNum":
      return try Apisvr_LoginServiceVerifyPhoneNumSessionBase(
        handler: handler,
        providerBlock: { try self.verifyPhoneNum(request: $0, session: $1 as! Apisvr_LoginServiceVerifyPhoneNumSessionBase) })
          .run()
    case "/apisvr.LoginService/RegisterWithPass":
      return try Apisvr_LoginServiceRegisterWithPassSessionBase(
        handler: handler,
        providerBlock: { try self.registerWithPass(request: $0, session: $1 as! Apisvr_LoginServiceRegisterWithPassSessionBase) })
          .run()
    case "/apisvr.LoginService/GetOneTimePassword":
      return try Apisvr_LoginServiceGetOneTimePasswordSessionBase(
        handler: handler,
        providerBlock: { try self.getOneTimePassword(request: $0, session: $1 as! Apisvr_LoginServiceGetOneTimePasswordSessionBase) })
          .run()
    case "/apisvr.LoginService/VerifyOneTimePassword":
      return try Apisvr_LoginServiceVerifyOneTimePasswordSessionBase(
        handler: handler,
        providerBlock: { try self.verifyOneTimePassword(request: $0, session: $1 as! Apisvr_LoginServiceVerifyOneTimePasswordSessionBase) })
          .run()
    case "/apisvr.LoginService/ResetPassword":
      return try Apisvr_LoginServiceResetPasswordSessionBase(
        handler: handler,
        providerBlock: { try self.resetPassword(request: $0, session: $1 as! Apisvr_LoginServiceResetPasswordSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol Apisvr_LoginServiceAnonymousLoginSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceAnonymousLoginSessionBase: ServerSessionUnaryBase<Apisvr_AnonymousLoginReq, Apisvr_AnonymousLoginResp>, Apisvr_LoginServiceAnonymousLoginSession {}

internal protocol Apisvr_LoginServiceAppLoginSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceAppLoginSessionBase: ServerSessionUnaryBase<Apisvr_AppLoginReq, Apisvr_AppLoginResp>, Apisvr_LoginServiceAppLoginSession {}

internal protocol Apisvr_LoginServiceOneTimePasswordLoginSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceOneTimePasswordLoginSessionBase: ServerSessionUnaryBase<Apisvr_OneTimePasswordLoginReq, Apisvr_OneTimePasswordLoginResp>, Apisvr_LoginServiceOneTimePasswordLoginSession {}

internal protocol Apisvr_LoginServiceThirdPartyLoginSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceThirdPartyLoginSessionBase: ServerSessionUnaryBase<Apisvr_ThirdPartyLoginReq, Apisvr_ThirdPartyLoginResp>, Apisvr_LoginServiceThirdPartyLoginSession {}

internal protocol Apisvr_LoginServiceVerifyPhoneNumSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceVerifyPhoneNumSessionBase: ServerSessionUnaryBase<Apisvr_VerifyPhoneNumReq, Apisvr_VerifyPhoneNumResp>, Apisvr_LoginServiceVerifyPhoneNumSession {}

internal protocol Apisvr_LoginServiceRegisterWithPassSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceRegisterWithPassSessionBase: ServerSessionUnaryBase<Apisvr_RegisterWithPassReq, Apisvr_RegisterWithPassResp>, Apisvr_LoginServiceRegisterWithPassSession {}

internal protocol Apisvr_LoginServiceGetOneTimePasswordSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceGetOneTimePasswordSessionBase: ServerSessionUnaryBase<Apisvr_GetOneTimePasswordReq, Apisvr_GetOneTimePasswordResp>, Apisvr_LoginServiceGetOneTimePasswordSession {}

internal protocol Apisvr_LoginServiceVerifyOneTimePasswordSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceVerifyOneTimePasswordSessionBase: ServerSessionUnaryBase<Apisvr_VerifyOneTimePasswordReq, Apisvr_VerifyOneTimePasswordResp>, Apisvr_LoginServiceVerifyOneTimePasswordSession {}

internal protocol Apisvr_LoginServiceResetPasswordSession: ServerSessionUnary {}

fileprivate final class Apisvr_LoginServiceResetPasswordSessionBase: ServerSessionUnaryBase<Apisvr_ResetPasswordReq, Apisvr_ResetPasswordResp>, Apisvr_LoginServiceResetPasswordSession {}

