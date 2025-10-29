//
//  SourceView.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 28/10/25.
//

import SwiftUI

struct SourceView : View {
    
    @StateObject private var viewModel : SourcesViewModel
    
    init(viewModel: SourcesViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        
    }
}

//#Preview {
//   SourceView()
//}
