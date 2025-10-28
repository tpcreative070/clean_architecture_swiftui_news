//
//  NewsItemViewModel.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import Foundation

struct NewsItemViewModel : Identifiable, Equatable {
    
    let id : String
    let name : String
    let year : String
    let country : String
    let poster : String?
    let rating : Double?
    
    init(id: String, name: String, year: Int, country: String, poster: String?, rating: Double?) {
        self.id = id
        self.name = name
        self.year = "\(year)"
        self.country = country
        self.poster = poster
        self.rating = rating
    }
   
    
}


extension NewsItemViewModel : HasPlaceholder {
    
    
    
    static func placeholder(id: String) -> NewsItemViewModel {
        .init(id: id, name: .placeholder(length: 20), year: 0, country: .placeholder(length: 5), poster: "", rating: 10)
    }
    
    

}
