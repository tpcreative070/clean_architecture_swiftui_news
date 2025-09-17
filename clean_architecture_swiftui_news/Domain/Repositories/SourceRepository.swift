//
//  SourceRepository.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//
import Foundation

protocol SourceRepository {
    
    func getSources() async throws -> [Source]
    
}
