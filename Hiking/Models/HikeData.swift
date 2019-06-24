//
//  HikeData.swift
//  Hiking
//
//  Created by Alex Jeffers on 6/23/19.
//  Copyright © 2019 asapinc. All rights reserved.
// This data model conforms to the swiftUI protocal so that it is able to be identified by swiftUI. ID is needed, UUID gives unique ID each time it is used.

import Foundation
import SwiftUI

struct Hike: Identifiable {
    var id = UUID()
    
    
    let name: String
    let imageURL: String
    let wins: Int
    let teamDiscription: String
    
}


extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Carolina Panthers", imageURL: "carolina-panthers", wins: 16, teamDiscription: "The Carolina Panthers' history formally dates back to 1993, \n when the NFL awarded the franchise to Charlotte, North Carolina. \n The Panthers, along with the Jacksonville Jaguars, \n began play in the 1995 NFL season as expansion teams."),
            Hike(name: "Atlanta Falcons", imageURL: "atl", wins: 10, teamDiscription: "The Atlanta Falcons are a professional American football team based in Atlanta, Georgia. The Falcons compete in the National Football League (NFL) as a member club of the league's National Football Conference (NFC) South division."),
            Hike(name: "New Orleans Saints", imageURL: "Saints", wins: 14, teamDiscription: "The New Orleans Saints are a professional American football team based in New Orleans, Louisiana. The Saints currently compete in the National Football League (NFL) as a member of the league's National Football Conference (NFC) South division. ... They played their home games in Tulane Stadium through the 1974 NFL season."),
            Hike(name: "TampaBay Bucs", imageURL: "tampa", wins: 8, teamDiscription: "The Tampa Bay Buccaneers are a professional American football franchise based in Tampa, Florida. The Buccaneers currently compete in the National Football League (NFL) as a member club of the league's National Football Conference (NFC) South division.")
        ]
    }
}
