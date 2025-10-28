//
//  AppFactory.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import Foundation

final class AppFactory {
    
    private lazy var keyChainService  = KeychainService()
    private lazy var  networkService  = NetworkService(keychainService: keyChainService)
    
   
   
    
}
