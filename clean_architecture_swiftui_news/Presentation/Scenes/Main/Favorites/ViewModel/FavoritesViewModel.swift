//
//  Untitled.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import Foundation

final class FavoritesViewModel : ViewModel {
   
    @Published private(set) var state : FavoritesViewState
    
    private let coordinator : FavoritesCoordinatorProtocol
    private let fetchData : GetNewsBySourceUseCase
    
    
    init(coordinator : FavoritesCoordinatorProtocol, fetchData: GetNewsBySourceUseCase) {
        state = .idle
        self.coordinator = coordinator
        self.fetchData = fetchData
    }
    
    
    func handle(_ event: FavoritesViewEvent) {
        
    }
    

}


private extension FavoritesViewModel {
    
    
}


