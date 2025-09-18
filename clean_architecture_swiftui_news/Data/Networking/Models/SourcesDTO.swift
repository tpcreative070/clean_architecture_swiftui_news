//
//  SourceDTO.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 18/9/25.
//

struct SourcesDTO : Decodable {
    let status : String
    
    let sources : [Source]
}
