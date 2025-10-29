//
//  FeedViewState.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

enum FeedViewState : Equatable {
    
    case idle
    case loading
    case error(String)
    case loaded(ViewData)
    
    struct ViewData : Equatable {
        let shouldShowPlaceholder : Bool
        
    }
    
}


enum FeedViewEvent {
    
    case onAppear
    case onSelectFeed(String)
    
}




