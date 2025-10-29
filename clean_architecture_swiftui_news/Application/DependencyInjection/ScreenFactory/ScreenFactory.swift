//
//  ScreenFactory.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

final class ScreenFactory : FavoritesCoordinatorFactory,
                            FeedCoordinatorFactory,
                            HomeCoordinatorFactory, NewsDetailsCoordinatorFactory, SourcesCoordinatorFactory {
  
   
    
    private let appFactory : AppFactory
  
    init(appFactory: AppFactory) {
        self.appFactory = appFactory
    }
    
}

// MARK: - FavoritesViewFactory

extension ScreenFactory : FavoritesViewFactory {
    
    func makeFavoritesView(coordinator:  FavoritesCoordinatorProtocol) -> FavoritesView {
        
        let viewModel = FavoritesViewModel(
            coordinator: coordinator,
            fetchData: appFactory.makeGetNewsUseCase()
        )
        let view = FavoritesView(viewModel: viewModel)

        return view
        
      
    }
    
    
}

//MARK: - FeedViewFactory

extension ScreenFactory : FeedViewFactory {
    
    func makeFeedView(coordinator: FeedCoordinatorProtocol) -> FeedView {
        
        let viewModel = FeedViewModel(
            coordinator: coordinator,
            fetchData: appFactory.makeGetNewsUseCase()
        )
        let view = FeedView(viewModel: viewModel)

        return view
        
    }
    
    
    
    
}

//MARK: - HomeViewFactory

extension ScreenFactory : HomeViewFactory {
    
    func makeHomeView(coordinator:  HomeCoordinatorProtocol) -> HomeView {
        
        let viewModel = HomeViewModel(
            coordinator: coordinator,
            fetchData: appFactory.makeGetNewsUseCase()
        )
        let view = HomeView(viewModel: viewModel)

        return view
        
    }
    
}


//MARK: - NewsDetailsViewFactory

extension ScreenFactory : NewsDetailsViewFactory {
    
    func makeNewsDetails(coordinator:  NewsDetailsCoordinatorProtocol) -> NewsDetailsView {
        
        let viewModel = NewsDetailsViewModel(
            coordinator: coordinator,
            fetchData: appFactory.makeGetNewsUseCase()
        )
        let view = NewsDetailsView(viewModel: viewModel)

        return view
        
    }
    
}

//MARK: - SourcesViewFactory

extension ScreenFactory : SourcesViewFactory {
    
    func makeSources(coordinator:  SourcesCoordinatorProtocol) -> SourceView {
        let viewModel = SourcesViewModel(
            coordinator: coordinator,
            fetchData: appFactory.makeGetNewsUseCase()
        )
        let view = SourceView(viewModel: viewModel)

        return view
    }
    
    
}

//MARK: AuthCoordinatorViewFactory

//extension ScreenFactory : AuthCoordinatorViewFactory {
//    func makeAuthCoordinator(coordinator: AuthCoordinatorProtocol) -> AuthCoordinatorView {
//
//    }
//    
//    
//}


