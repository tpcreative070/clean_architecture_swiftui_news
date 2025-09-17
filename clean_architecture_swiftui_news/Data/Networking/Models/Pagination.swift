//
//  Pagination.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 17/9/25.
//

import Foundation

struct Pagination {
    var pageCount: Int?
    var currentPage = 1

    var isLimitReached: Bool {
        guard let pageCount else { return false }
        return currentPage > pageCount
    }

    var page: Page = .first {
        didSet {
            currentPage = page == .first ? 1 : currentPage + 1
        }
    }
}

