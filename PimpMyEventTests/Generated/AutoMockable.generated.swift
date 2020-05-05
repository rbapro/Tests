// Generated using Sourcery 0.18.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

@testable import PimpMyEvent

private func objectDidNotCallAnyMethod(_ object: Any) -> Bool {
  let mirror = Mirror(reflecting: object)
  for case let (label?, value) in mirror.children where label.hasSuffix("CallsCount") {
    if let count = value as? Int, count > 0 {
      return false
    }
  }
  return true
}

private func objectDidNotCallAnyMethod(_ object: Any, except methodName: String) -> Bool {
  let mirror = Mirror(reflecting: object)
  for case let (label?, value) in mirror.children where label.hasSuffix("CallsCount") {
    let methodCallsCountName = methodName + "CallsCount"
    if let count = value as? Int, (label == methodCallsCountName && count == 0) || (label != methodCallsCountName && count > 0) { return false }
  }
  return true
}














