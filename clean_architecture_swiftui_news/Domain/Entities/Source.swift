//
//  Source.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//

struct Source : Decodable {
    
    var id: String
    var name: String
    var des: String
    var url: String
    var category: String
    var language: String
    var country: String
    var createdAt: Int32
    
}
