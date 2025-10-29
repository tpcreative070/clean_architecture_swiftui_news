//
//  HomeViewState.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

enum HomeViewState : Equatable {
    
    case idle
    case loading
    case error(String)
    case loaded(ViewData)
    
    struct ViewData : Equatable {
        let shouldPlaceholder : Bool
        
    }
    
}


enum HomeViewEvent {
    
    case onAppear
    case onSelectHome(String)
    
    
}
