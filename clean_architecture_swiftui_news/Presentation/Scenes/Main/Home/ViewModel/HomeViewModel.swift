//
//  Home.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//
import Foundation

final class HomeViewModel : ViewModel {
    
    @Published private(set) var state : HomeViewState
    
    private let coordinator : HomeCoordinatorProtocol
    
    init(state: HomeViewState, coordinator: HomeCoordinatorProtocol) {
        self.state = state
        self.coordinator = coordinator
    }
    
    func handle(_ event: HomeViewEvent) {
        
    }
    
    
}
