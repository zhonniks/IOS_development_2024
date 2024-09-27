//
//  Item.swift
//  I Am Rich
//
//  Created by Zhannel Omarova on 27.09.2024.
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
