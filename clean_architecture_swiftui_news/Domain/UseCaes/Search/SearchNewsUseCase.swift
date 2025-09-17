//
//  SearchNewsUseCase.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//

final class SearchNewsUseCase {
    private let newsRepository : NewsRepository
    
    init(newsRepository: NewsRepository) {
        self.newsRepository = newsRepository
    }
    
    func execute(query : String, sourceId : String?)async throws -> News {
        
        return try await newsRepository.searchNews(query: query, sources: sourceId)
        
    }
    
}

