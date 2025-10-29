//
//  FeedView.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

struct FeedView : View {
    
    @StateObject private var viewModel : FeedViewModel
    
    init(viewModel: FeedViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    
    
    var body : some View {
        
    }
}

//#Preview {
//    FeedView()
//}
