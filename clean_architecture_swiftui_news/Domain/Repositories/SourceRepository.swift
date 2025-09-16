//
//  SourceRepository.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//


protocol SourceRepository {
    
    func insertSources(sources: [Source])
    
    func getSources() -> [Source]
    
    func deleteAllSources()
}
