// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class GetVendorQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getVendor {
      vendor {
        __typename
        description
        name
      }
    }
    """

  public let operationName: String = "getVendor"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("vendor", type: .list(.object(Vendor.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(vendor: [Vendor?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "vendor": vendor.flatMap { (value: [Vendor?]) -> [ResultMap?] in value.map { (value: Vendor?) -> ResultMap? in value.flatMap { (value: Vendor) -> ResultMap in value.resultMap } } }])
    }

    public var vendor: [Vendor?]? {
      get {
        return (resultMap["vendor"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Vendor?] in value.map { (value: ResultMap?) -> Vendor? in value.flatMap { (value: ResultMap) -> Vendor in Vendor(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Vendor?]) -> [ResultMap?] in value.map { (value: Vendor?) -> ResultMap? in value.flatMap { (value: Vendor) -> ResultMap in value.resultMap } } }, forKey: "vendor")
      }
    }

    public struct Vendor: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Vendor"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("name", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(description: String? = nil, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Vendor", "description": description, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var description: String? {
        get {
          return resultMap["description"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}
