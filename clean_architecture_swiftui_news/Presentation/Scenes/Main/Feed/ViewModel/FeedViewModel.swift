//
//  FeedViewModel.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import Foundation

final class FeedViewModel  : ViewModel {
    
    @Published private(set) var state: FeedViewState
    
    private let coordinator : FeedCoordinatorProtocol
    
    init(state: FeedViewState, coordinator: FeedCoordinatorProtocol) {
        self.state = state
        self.coordinator = coordinator
    }
    
    func handle(_ event: FeedViewEvent) {
        
    }
    
}

private extension FeedViewModel {
    
}
