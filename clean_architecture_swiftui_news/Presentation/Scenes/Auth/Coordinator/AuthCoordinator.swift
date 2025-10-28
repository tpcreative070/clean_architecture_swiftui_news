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
    
}

