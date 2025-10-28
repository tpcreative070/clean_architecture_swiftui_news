//
//  ScreenFactory.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

final class ScreenFactory : FavoritesCoordinatorFactory,
                            FeedCoordinatorFactory,
                            HomeCoordinatorFactory, NewsDetailsCoordinatorFactory, SourcesCoordinatorFactory,AuthCoordinatorFactory {
   
    
    private let appFactory : AppFactory
    
    
    init(appFactory: AppFactory) {
        self.appFactory = appFactory
    }
    
}

// MARK: - FavoritesViewFactory

extension ScreenFactory : FavoritesViewFactory {
    
    func makeFavoritesView(coordinator: any FavoritesCoordinatorProtocol) -> FavoritesView {
        
    }
    
    
}

//MARK: - FeedViewFactory

extension ScreenFactory : FeedViewFactory {
    
    func makeFeedView(coordinator: any FeedCoordinatorProtocol) -> FeedView {
        
    }
    
    
    
    
}

//MARK: - HomeViewFactory

extension ScreenFactory : HomeViewFactory {
    
    func makeHomeView(coordinator: any HomeCoordinatorProtocol) -> HomeView {
        
    }
    
}


//MARK: - NewsDetailsViewFactory

extension ScreenFactory : NewsDetailsViewFactory {
    
    func makeNewsDetails(coordinator: any NewsDetailsCoordinatorProtocol) -> NewsDetailsView {
        
        
        
    }
    
}

//MARK: - SourcesViewFactory

extension ScreenFactory : SourcesViewFactory {
    
    func makeSources(coordinator: any SourcesCoordinatorProtocol) -> SourceView {
        
    }
    
    
}

//MARK: AuthCoordinatorViewFactory

extension ScreenFactory : AuthCoordinatorViewFactory {
    func makeAuthCoordinator(coordinator: any AuthCoordinatorProtocol) -> AuthCoordinatorView {
        
    }
    
    
}






