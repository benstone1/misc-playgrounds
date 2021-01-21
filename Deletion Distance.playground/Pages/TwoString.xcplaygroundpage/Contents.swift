import Foundation

public struct TwoString {
    let str1: String
    let str2: String
}

extension TwoString: Hashable {
    public var hashValue: Int {
        return str1.appending(str2).hashValue
    }
    public static func == (lhs: TwoString, rhs: TwoString) -> Bool {
        return lhs.str1 == rhs.str1 && lhs.str2 == rhs.str2
    }
}
