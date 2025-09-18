//
//  NewsDTO.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 18/9/25.
//

struct NewsDTO : Decodable {
    let status : String
    let totalResults : Int
    let articles : [News]
}
