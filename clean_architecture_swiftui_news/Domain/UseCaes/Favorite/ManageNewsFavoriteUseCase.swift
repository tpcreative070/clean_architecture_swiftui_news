//
//  ManageNewsFavoriteUseCase.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//



final class ManageNewsFavoriteUseCase {
    
    private let favoriteRespository : FavoriteRepository
    
    init(favoriteRespository: FavoriteRepository) {
        self.favoriteRespository = favoriteRespository
    }
    
    func getFavorites(code : String)async throws -> [News]{
        
        return try await favoriteRespository.getFavorites()
        
    }
    
    
    func addFavorite(code : String)async throws -> Int32{
        let news = News(id: code)
        return try await favoriteRespository.addFavorite(article: news)
        
    }
    
    func removeFavorite(code : String)async throws {
        let news = News(id: code)
        try await favoriteRespository.removeFavorite(article: news)
        
    }
    
    func isFavorite(articleUrl : String)async throws  -> Bool{
     
        return try await favoriteRespository.isFavorite(articleUrl: articleUrl)
    }

    
}

