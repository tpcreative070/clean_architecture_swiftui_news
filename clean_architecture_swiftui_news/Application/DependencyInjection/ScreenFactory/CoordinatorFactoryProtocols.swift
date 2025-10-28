//
//  ProfileCoordinatorFactory.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 27/10/25.
//

import Foundation

protocol FavoritesCoordinatorFactory : FavoritesViewFactory {}

protocol FeedCoordinatorFactory : FeedViewFactory {}

protocol HomeCoordinatorFactory : HomeViewFactory {}

protocol NewsDetailsCoordinatorFactory : NewsDetailsViewFactory {}

protocol SourcesCoordinatorFactory : SourcesViewFactory {}

protocol AuthCoordinatorFactory : AuthCoordinatorViewFactory {}
