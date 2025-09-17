//
//  GetNewsBySourceUseCase.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//

import Foundation

final class GetNewsBySourceUseCase {
    private let newRespository : NewsRepository
    
    init(newRespository: NewsRepository) {
        self.newRespository = newRespository
    }
    
    
    func execute(id : String)async throws -> News{
        
        return try await newRespository.getNewsBySource(sourceId: id)
        
    }
    
    
}

