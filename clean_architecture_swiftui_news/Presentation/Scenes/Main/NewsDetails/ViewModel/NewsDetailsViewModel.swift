//
//  NewsDetailsViewModel.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import Foundation

final class NewsDetailsViewModel : ViewModel {
    
    
    @Published private(set) var state : NewsDetailsViewState
    
    private let coordinator : NewsDetailsCoordinatorProtocol
    
    init(state: NewsDetailsViewState, coordinator: NewsDetailsCoordinatorProtocol) {
        self.state = state
        self.coordinator = coordinator
    }
    
    func handle(_ event: NewsDetailsViewEvent) {
        
    }
    
}
