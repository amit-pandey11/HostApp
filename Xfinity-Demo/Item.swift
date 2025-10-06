//
//  Item.swift
//  Xfinity-Demo
//
//  Created by Amit Pandey on 06/10/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
