//
//  SourcesViewModel.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 29/10/25.
//

import Foundation

final class SourcesViewModel : ViewModel {
    
    @Published private(set) var state: SourcesViewState
    
    private let coordinator : SourcesCoordinatorProtocol
    
    private let fetchData : GetNewsBySourceUseCase
    
    init(coordinator: SourcesCoordinatorProtocol, fetchData: GetNewsBySourceUseCase) {
        self.state = .idle
        self.coordinator = coordinator
        self.fetchData = fetchData
    }
    
    func handle(_ event: SourcesViewEvent) {
        
    }
    
}
