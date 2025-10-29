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
    
    private let fetchData : GetNewsBySourceUseCase
    
   
    init( coordinator: HomeCoordinatorProtocol, fetchData: GetNewsBySourceUseCase) {
        self.state = .idle
        self.coordinator = coordinator
        self.fetchData = fetchData
    }
    
    func handle(_ event: HomeViewEvent) {
        
    }
    
    
}
