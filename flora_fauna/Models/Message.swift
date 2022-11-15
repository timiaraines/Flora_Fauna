//
//  Message.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/9/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
