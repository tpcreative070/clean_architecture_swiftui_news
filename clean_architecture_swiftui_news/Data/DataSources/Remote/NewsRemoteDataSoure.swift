//
//  NewsRemoteDataSoure.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 15/9/25.
//

import Foundation

final class NewsRemoteDataSource {
    
    private let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
    }
    
}


extension NewsRemoteDataSource {

    

    func getNews(countryCode : String,pageNumber : Int,pageSize : Int,apkKey : String) async throws -> NewsDTO {
        let config = NewsNetworkConfig.getNews(countryCode, pageNumber, pageSize, apkKey)
        return try await networkService.request(with: config)
    }
//
//    func fetchMoviesPagedList(page: Int) async throws -> MoviesPagedResponse {
//        let config = MovieNetworkConfig.listByPage(page)
//        return try await networkService.request(with: config)
//    }
//
//    func addFavoriteMovie(movieId: String) async throws {
//        let config = FavoriteMoviesNetworkConfig.add(movieId: movieId)
//        try await networkService.request(with: config, useToken: true)
//    }
//
//    func deleteFavoriteMovie(movieId: String) async throws {
//        let config = FavoriteMoviesNetworkConfig.delete(movieId: movieId)
//        try await networkService.request(with: config, useToken: true)
//    }
//
//    func fetchFavoriteMovies() async throws -> MoviesResponse {
//        let config = FavoriteMoviesNetworkConfig.list
//        return try await networkService.request(with: config, useToken: true)
//    }
    

}
