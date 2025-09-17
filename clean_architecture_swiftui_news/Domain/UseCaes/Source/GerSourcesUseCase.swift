//
//  GerSourcesUseCase.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//

final class GetSourcesUseCase {
    private let sourceRepository : SourceRepository
    
    init(sourceRepository: SourceRepository) {
        self.sourceRepository = sourceRepository
    }
    
    func execute(id : String)async throws -> [Source]{
        
        return try await sourceRepository.getSources()
        
    }
    
}

