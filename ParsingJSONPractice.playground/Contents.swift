//: Playground - noun: a place where people can play

import UIKit

let jsonData = """
{"date":"2017-12-21","season":"advent","season_week":3,"celebrations":[{"title":"21st December","colour":"violet","rank":"ferial","rank_num":2.9},{"title":"Saint Peter Canisius, priest and doctor","colour":"violet","rank":"commemoration","rank_num":4.0}],"weekday":"thursday"}
""".data(using: .utf8)!

struct LiturgicalDate: Codable {
    let date: String
    let seasonWeek: Int
    let celebrations: [Celebration]
    enum CodingKeys: String, CodingKey {
        case date
        case seasonWeek = "season_week"
        case celebrations
    }
}

struct Celebration: Codable {
    let title: String
    let rank: String
}

do {
    let liturgicalDate = try JSONDecoder().decode(LiturgicalDate.self, from: jsonData)
    dump(liturgicalDate)
}
catch {
    print(error)
}


