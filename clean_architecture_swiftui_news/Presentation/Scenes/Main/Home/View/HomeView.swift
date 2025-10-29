//
//  HomeView.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

struct HomeView : View {
    
    @StateObject private var viewModel : HomeViewModel
    
    init(viewModel: HomeViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        
    }
    
}

//#Preview {
//    HomeView()
//}
