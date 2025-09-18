//
//  News.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//

import Foundation

struct News : Decodable{
    
    var id: String
    var author: String?
    var content: String?
    var des: String?
    var publishedAt: String?
    var sourceId: String?
    var sourceName: String?
    var title: String?
    var url: String?
    var urlToImage: String?
    var isFavorite: Bool = false
    var favoritedAt: Int32?
    
}
