//
//  AuthCoordinator.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

final class AuthCoordinator : Coordinator {
    
    enum Screen : Routable {
        case login
        
    }
    
    @Published var navigationPath: [Screen] = [Screen]()
    private let showMainScreenHandler: () -> Void
    
    init (showMainScreenHandler: @escaping () -> Void) {
   
        self.showMainScreenHandler = showMainScreenHandler
    }
    
}

extension AuthCoordinator : AuthCoordinatorProtocol {
    
    
    func showLogin() {
        showMainScreenHandler()
    }
    
    func showMainScene() {
        updatePath()
    }
    
}


private extension AuthCoordinator {
    
    func updatePath(){
        
    }
    
    
    
}
