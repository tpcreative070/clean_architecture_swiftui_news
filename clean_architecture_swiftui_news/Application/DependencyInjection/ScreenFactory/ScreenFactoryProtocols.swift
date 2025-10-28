//
//  ScreenFactoryProtocols.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

@MainActor
protocol FavoritesViewFactory {
    
    func makeFavoritesView(coordinator : FavoritesCoordinatorProtocol) -> FavoritesView
    
}


@MainActor
protocol FeedViewFactory {
    
    func makeFeedView(coordinator : FeedCoordinatorProtocol) -> FeedView
    
}

@MainActor
protocol HomeViewFactory {
    
    
    func makeHomeView(coordinator : HomeCoordinatorProtocol) -> HomeView
    
}


@MainActor
protocol NewsDetailsViewFactory {
    
    func makeNewsDetails(coordinator : NewsDetailsCoordinatorProtocol) -> NewsDetailsView
    
}

@MainActor
protocol SourcesViewFactory {
    
     
    func makeSources(coordinator : SourcesCoordinatorProtocol) -> SourceView
}


@MainActor
protocol AuthCoordinatorViewFactory {
    
    func makeAuthCoordinator(coordinator : AuthCoordinatorProtocol) -> AuthCoordinatorView
}
