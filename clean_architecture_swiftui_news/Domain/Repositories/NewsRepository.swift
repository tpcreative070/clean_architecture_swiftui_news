//
//  NewRepository.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//

protocol NewsRepository {

    func getTopHeadlines(countryCode : String) async throws -> News
    
    func searchNews(query : String, sources: String?) async throws -> News
    
    func getNewsBySource(sourceId : String) async throws -> News
    
}
