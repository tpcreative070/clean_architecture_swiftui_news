//
//  NewsObject.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//

import Foundation
import RealmSwift

final class NewsObject: Object {
    
    
    @Persisted(primaryKey: true) var id: String
    @Persisted var author: String?
    @Persisted var content: String?
    @Persisted var des: String?
    @Persisted var publishedAt: String?
    @Persisted var sourceId: String?
    @Persisted var sourceName: String?
    @Persisted var title: String?
    @Persisted var url: String?
    @Persisted var urlToImage: String?
    @Persisted var isFavorite: Bool = false
    @Persisted var favoritedAt: Int32?
    
    convenience init(_ news: NewsObject) {
        self.init()
        self.id = news.id
        self.author = news.author
        self.des = news.des
        self.publishedAt = news.publishedAt
        self.sourceId = news.sourceId
        self.sourceName = news.sourceName
        self.title = news.title
        self.url = news.url
        self.urlToImage = news.urlToImage
        self.isFavorite = news.isFavorite
        self.favoritedAt = news.favoritedAt
     
    }
    
}
