//
//  ScreenFactoryProtocols.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

@MainActor
protocol FavoritesViewFactory {
    
    func makeFavoritesView(coordinator : FavoritesCoordinatorProtocols) -> FavoritesView
    
}


@MainActor
protocol FeedViewFactory {
    
    func makeFeedView(coordinator : FeedCoordinatorProtocols) -> FeedView
    
}

@MainActor
protocol HomeViewFactory {
    
    
    func makeHomeView(coordinator : HomeCoordinatorProtocols) -> HomeView
    
}


@MainActor
protocol NewsDetailsViewFactory {
    
    func makeNewsDetails(coordinator : NewsDetailsCoordinatorProtocols) -> NewsDetailsView
    
}

@MainActor
protocol SourcesViewFactory {
    
     
    func makeSources(coordinator : SourcesCoordinatorProtocols) -> SourceView
}
