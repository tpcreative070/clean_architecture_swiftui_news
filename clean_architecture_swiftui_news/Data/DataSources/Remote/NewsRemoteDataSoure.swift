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

    func searchNews(q : String,page : Int, pageSize : Int, apiKey : String,  sources : String) async throws -> NewsDTO {
        let config = NewsNetworkConfig.searchNews(q, page, pageSize, apiKey, sources)
        return try await networkService.request(with: config)
    }

    func getSources(apiKey: String) async throws -> SourcesDTO {
        let config = NewsNetworkConfig.getSources(apiKey)
        return try await networkService.request(with: config, useToken: true)
    }


}
