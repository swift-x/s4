public struct Response: Message {
    public var version: Version
    public var status: Status
    public var headers: Headers
    public var body: Body
    public var storage: [String: Any] = [:]

    public init(version: Version, status: Status, headers: Headers, body: Body) {
        self.version = version
        self.status = status
        self.headers = headers
        self.body = body
    }
}

public protocol ResponseInitializable {
    init(response: Response)
}

public protocol ResponseRepresentable {
    var response: Response { get }
}

public protocol ResponseConvertible: ResponseInitializable, ResponseRepresentable {}
