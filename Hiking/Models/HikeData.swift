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
    
}


extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Carolina Panthers", imageURL: "carolina-panthers", wins: 16),
            Hike(name: "Atlanta Falcons", imageURL: "atl", wins: 10),
            Hike(name: "New Orleans Saints", imageURL: "Saints", wins: 14),
            Hike(name: "TampaBay Bucs", imageURL: "tampa", wins: 8)
        ]
    }
}
