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
    
    
    init(state: FavoritesViewState, coordinator: FavoritesCoordinatorProtocol) {
        self.state = state
        self.coordinator = coordinator
    }
    
    
    func handle(_ event: FavoritesViewEvent) {
        
    }
    

}


private extension FavoritesViewModel {
    
    
}


