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
    
    private let fetchData : GetNewsBySourceUseCase
    
    init(coordinator: FeedCoordinatorProtocol, fetchData: GetNewsBySourceUseCase) {
        self.state = .idle
        self.coordinator = coordinator
        self.fetchData = fetchData
    }
    

    func handle(_ event: FeedViewEvent) {
        
    }
    
}

private extension FeedViewModel {
    
}
