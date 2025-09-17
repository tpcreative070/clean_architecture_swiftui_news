//
//  GetTopHeadlinesUseCase.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//

final class GetTopHeadlinesUseCase {
    
    private let newRespository : NewsRepository
    
    init(newRespository: NewsRepository) {
        self.newRespository = newRespository
    }
    
    func execute(code : String)async throws -> News{
        
        return try await newRespository.getTopHeadlines(countryCode: code)
        
    }
    
}

