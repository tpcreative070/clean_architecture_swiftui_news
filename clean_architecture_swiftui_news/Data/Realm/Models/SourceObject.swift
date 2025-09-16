//
//  SourceObject.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//

import Foundation
import RealmSwift


final class SourceObject : Object {
    

    @Persisted(primaryKey: true) var id: String
    @Persisted  var name: String
    @Persisted  var des: String
    @Persisted  var url: String
    @Persisted  var category: String
    @Persisted  var language: String
    @Persisted  var country: String
    @Persisted  var createdAt: Int32
    
    
    convenience init(_ source: SourceObject) {
        self.init()
        self.id = source.id
        self.name = source.name
        self.des = source.des
        self.url = source.url
        self.category = source.category
        self.language = source.language
        self.country = source.country
        self.createdAt = source.createdAt
      
    }
    
}

