//
//  Item.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 12/9/25.
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
