//
//  NewsDetailsView.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

struct NewsDetailsView : View {
    @StateObject private var viewModel : NewsDetailsViewModel
    
    init(viewModel: NewsDetailsViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        
    }
    
    
}


//#Preview {
//    NewsDetailsView()
//}
