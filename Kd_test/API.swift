//  This file was automatically generated and should not be edited.

import Apollo

public final class GetMeQlQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetMeQL {\n  me {\n    __typename\n    email\n    transactions {\n      __typename\n      edges {\n        __typename\n        cursor\n        node {\n          __typename\n          id\n          title\n          description\n          user {\n            __typename\n            avatar {\n              __typename\n              contentType\n              url\n              height\n              width\n            }\n          }\n          category {\n            __typename\n            image {\n              __typename\n              contentType\n              url\n              height\n              width\n            }\n            name\n          }\n          amount {\n            __typename\n            currency {\n              __typename\n              name\n              symbol\n            }\n            value\n          }\n        }\n      }\n      pageInfo {\n        __typename\n        startCursor\n        endCursor\n        hasNextPage\n      }\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("me", type: .object(Me.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(me: Me? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "me": me.flatMap { (value: Me) -> ResultMap in value.resultMap }])
    }

    /// Retrieve the current user's account
    public var me: Me? {
      get {
        return (resultMap["me"] as? ResultMap).flatMap { Me(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "me")
      }
    }

    public struct Me: GraphQLSelectionSet {
      public static let possibleTypes = ["Me"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("transactions", type: .object(Transaction.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(email: String? = nil, transactions: Transaction? = nil) {
        self.init(unsafeResultMap: ["__typename": "Me", "email": email, "transactions": transactions.flatMap { (value: Transaction) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var transactions: Transaction? {
        get {
          return (resultMap["transactions"] as? ResultMap).flatMap { Transaction(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "transactions")
        }
      }

      public struct Transaction: GraphQLSelectionSet {
        public static let possibleTypes = ["BankTransactionConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .list(.object(Edge.selections))),
          GraphQLField("pageInfo", type: .nonNull(.object(PageInfo.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(edges: [Edge?]? = nil, pageInfo: PageInfo) {
          self.init(unsafeResultMap: ["__typename": "BankTransactionConnection", "edges": edges.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, "pageInfo": pageInfo.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A list of edges.
        public var edges: [Edge?]? {
          get {
            return (resultMap["edges"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Edge?] in value.map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Edge?]) -> [ResultMap?] in value.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } } }, forKey: "edges")
          }
        }

        /// Information to aid in pagination.
        public var pageInfo: PageInfo {
          get {
            return PageInfo(unsafeResultMap: resultMap["pageInfo"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "pageInfo")
          }
        }

        public struct Edge: GraphQLSelectionSet {
          public static let possibleTypes = ["BankTransactionEdge"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("cursor", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .object(Node.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(cursor: String, node: Node? = nil) {
            self.init(unsafeResultMap: ["__typename": "BankTransactionEdge", "cursor": cursor, "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A cursor for use in pagination.
          public var cursor: String {
            get {
              return resultMap["cursor"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "cursor")
            }
          }

          /// The item at the end of the edge.
          public var node: Node? {
            get {
              return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "node")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes = ["BankTransaction"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("title", type: .scalar(String.self)),
              GraphQLField("description", type: .scalar(String.self)),
              GraphQLField("user", type: .nonNull(.object(User.selections))),
              GraphQLField("category", type: .object(Category.selections)),
              GraphQLField("amount", type: .object(Amount.selections)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID, title: String? = nil, description: String? = nil, user: User, category: Category? = nil, amount: Amount? = nil) {
              self.init(unsafeResultMap: ["__typename": "BankTransaction", "id": id, "title": title, "description": description, "user": user.resultMap, "category": category.flatMap { (value: Category) -> ResultMap in value.resultMap }, "amount": amount.flatMap { (value: Amount) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var title: String? {
              get {
                return resultMap["title"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "title")
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

            public var user: User {
              get {
                return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "user")
              }
            }

            public var category: Category? {
              get {
                return (resultMap["category"] as? ResultMap).flatMap { Category(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "category")
              }
            }

            public var amount: Amount? {
              get {
                return (resultMap["amount"] as? ResultMap).flatMap { Amount(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "amount")
              }
            }

            public struct User: GraphQLSelectionSet {
              public static let possibleTypes = ["User"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("avatar", type: .object(Avatar.selections)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(avatar: Avatar? = nil) {
                self.init(unsafeResultMap: ["__typename": "User", "avatar": avatar.flatMap { (value: Avatar) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var avatar: Avatar? {
                get {
                  return (resultMap["avatar"] as? ResultMap).flatMap { Avatar(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "avatar")
                }
              }

              public struct Avatar: GraphQLSelectionSet {
                public static let possibleTypes = ["Image"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("contentType", type: .scalar(String.self)),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                  GraphQLField("height", type: .scalar(Int.self)),
                  GraphQLField("width", type: .scalar(Int.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(contentType: String? = nil, url: String, height: Int? = nil, width: Int? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Image", "contentType": contentType, "url": url, "height": height, "width": width])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var contentType: String? {
                  get {
                    return resultMap["contentType"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "contentType")
                  }
                }

                public var url: String {
                  get {
                    return resultMap["url"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                public var height: Int? {
                  get {
                    return resultMap["height"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "height")
                  }
                }

                public var width: Int? {
                  get {
                    return resultMap["width"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "width")
                  }
                }
              }
            }

            public struct Category: GraphQLSelectionSet {
              public static let possibleTypes = ["TransactionCategory"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .object(Image.selections)),
                GraphQLField("name", type: .nonNull(.scalar(String.self))),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(image: Image? = nil, name: String) {
                self.init(unsafeResultMap: ["__typename": "TransactionCategory", "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }, "name": name])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var image: Image? {
                get {
                  return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "image")
                }
              }

              public var name: String {
                get {
                  return resultMap["name"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "name")
                }
              }

              public struct Image: GraphQLSelectionSet {
                public static let possibleTypes = ["Image"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("contentType", type: .scalar(String.self)),
                  GraphQLField("url", type: .nonNull(.scalar(String.self))),
                  GraphQLField("height", type: .scalar(Int.self)),
                  GraphQLField("width", type: .scalar(Int.self)),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(contentType: String? = nil, url: String, height: Int? = nil, width: Int? = nil) {
                  self.init(unsafeResultMap: ["__typename": "Image", "contentType": contentType, "url": url, "height": height, "width": width])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var contentType: String? {
                  get {
                    return resultMap["contentType"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "contentType")
                  }
                }

                public var url: String {
                  get {
                    return resultMap["url"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }

                public var height: Int? {
                  get {
                    return resultMap["height"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "height")
                  }
                }

                public var width: Int? {
                  get {
                    return resultMap["width"] as? Int
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "width")
                  }
                }
              }
            }

            public struct Amount: GraphQLSelectionSet {
              public static let possibleTypes = ["Money"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("currency", type: .object(Currency.selections)),
                GraphQLField("value", type: .scalar(Double.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(currency: Currency? = nil, value: Double? = nil) {
                self.init(unsafeResultMap: ["__typename": "Money", "currency": currency.flatMap { (value: Currency) -> ResultMap in value.resultMap }, "value": value])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var currency: Currency? {
                get {
                  return (resultMap["currency"] as? ResultMap).flatMap { Currency(unsafeResultMap: $0) }
                }
                set {
                  resultMap.updateValue(newValue?.resultMap, forKey: "currency")
                }
              }

              public var value: Double? {
                get {
                  return resultMap["value"] as? Double
                }
                set {
                  resultMap.updateValue(newValue, forKey: "value")
                }
              }

              public struct Currency: GraphQLSelectionSet {
                public static let possibleTypes = ["Currency"]

                public static let selections: [GraphQLSelection] = [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("name", type: .nonNull(.scalar(String.self))),
                  GraphQLField("symbol", type: .nonNull(.scalar(String.self))),
                ]

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(name: String, symbol: String) {
                  self.init(unsafeResultMap: ["__typename": "Currency", "name": name, "symbol": symbol])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var name: String {
                  get {
                    return resultMap["name"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                public var symbol: String {
                  get {
                    return resultMap["symbol"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "symbol")
                  }
                }
              }
            }
          }
        }

        public struct PageInfo: GraphQLSelectionSet {
          public static let possibleTypes = ["PageInfo"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("startCursor", type: .scalar(String.self)),
            GraphQLField("endCursor", type: .scalar(String.self)),
            GraphQLField("hasNextPage", type: .nonNull(.scalar(Bool.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startCursor: String? = nil, endCursor: String? = nil, hasNextPage: Bool) {
            self.init(unsafeResultMap: ["__typename": "PageInfo", "startCursor": startCursor, "endCursor": endCursor, "hasNextPage": hasNextPage])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// When paginating backwards, the cursor to continue.
          public var startCursor: String? {
            get {
              return resultMap["startCursor"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "startCursor")
            }
          }

          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? {
            get {
              return resultMap["endCursor"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "endCursor")
            }
          }

          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool {
            get {
              return resultMap["hasNextPage"]! as! Bool
            }
            set {
              resultMap.updateValue(newValue, forKey: "hasNextPage")
            }
          }
        }
      }
    }
  }
}