//
//  SourcesViewState.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 29/10/25.
//

enum SourcesViewState : Equatable {
    
    case idle
    case loading
    case error(String)
    case loaded(ViewData)
    
    struct ViewData : Equatable {
        let shouldShowPlaceholder: Bool
    }
    
    
}


enum SourcesViewEvent {
    case onAppear
    case onSelectSources(String)
}
