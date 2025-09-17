//
//  FavoriteRepository.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//

import Foundation

protocol FavoriteRepository {
    

    
    func getFavorites() async throws -> [News]
    
    func addFavorite(article: News) async throws -> Int32
    
    func removeFavorite(article: News) async throws
    
    func isFavorite(articleUrl: String) async throws -> Bool
    
    func removeAllFavorites() async throws
    

}
