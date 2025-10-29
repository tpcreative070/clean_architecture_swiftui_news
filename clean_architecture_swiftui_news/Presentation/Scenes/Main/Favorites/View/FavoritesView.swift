//
//  FavoritesView.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

struct FavoritesView : View{
    
    @StateObject private var viewModel : FavoritesViewModel
    
    init(viewModel: FavoritesViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    
    var body: some View {
        
        Button("button"){
            
        }
        
    }
}

//#Preview {
//    FavoritesView()
//}

