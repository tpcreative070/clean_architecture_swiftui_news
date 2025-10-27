//
//  MovieRepositoryImpl.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//

final class NewsRepositoryImpl : @unchecked Sendable {
    
    enum NewsRepositoryError: Error {
        case maxPagesReached
    }

    private var loadedNews = [News]()
    private var pagination = Pagination()

    private var isFavoritesLoaded = false
    private var favoriteMovies: [News] {
        loadedNews.filter { $0.isFavorite }
    }

    private let localDataSource: NewsLocalDataSource
    private let remoteDataSource: NewsRemoteDataSource

    init(localDataSource: NewsLocalDataSource, remoteDataSource: NewsRemoteDataSource) {
        self.localDataSource = localDataSource
        self.remoteDataSource = remoteDataSource
    }
    
}


extension NewsRepositoryImpl : NewsRepository {
    
    
    @RealmActor
    func getTopHeadlines(countryCode: String) async throws -> News {
        return News(id: "")
    }
    
    @RealmActor
    func searchNews(query: String, sources: String?) async throws -> News {
        return News(id: "")
        
    }
    
    @RealmActor
    func getNewsBySource(sourceId: String) async throws -> News {
        
        return News(id: "")
    }
    
    
}
