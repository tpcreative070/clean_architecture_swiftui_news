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
    
    private let fetchData : GetNewsBySourceUseCase
    
    init(coordinator: NewsDetailsCoordinatorProtocol, fetchData: GetNewsBySourceUseCase) {
        self.state = .idle
        self.coordinator = coordinator
        self.fetchData = fetchData
    }
    
    func handle(_ event: NewsDetailsViewEvent) {
        
    }
    
}
