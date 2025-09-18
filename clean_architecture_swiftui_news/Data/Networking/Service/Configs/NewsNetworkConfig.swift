//
//  MovieNetworkConfig.swift
//  clean_architecture_design_pattern_swiftui
//
//  Created by Tran Thanh Phong on 29/8/25.
//

import Foundation

enum NewsNetworkConfig: NetworkConfig {
    case getNews(String,Int,Int,String)
    case searchNews(String,Int,Int,String,String)
    case getSources(String)

    var path: String {
        "v2/"
    }

    var endPoint: String {
        switch self {
        case .getNews(let countryCode,let pageNumber, let pageSize, let apkKey):
            return "top-headlines?country=\(countryCode)&page=\(pageNumber)&pageSize=\(pageSize)&apiKey=\(apkKey)"
        case .searchNews(let q, let page, let pageSize, let apiKey, let sources):
            return "everything?q=\(q)&page=\(page)&pageSize=\(pageSize)&apiKey=\(apiKey)&sources=\(sources)"
            
        case .getSources(let apiKey):
            return "top-headlines/sources?apiKey=\(apiKey)"
        }
    }

    var task: HTTPTask {
        .request
    }

    var method: HTTPMethod {
        .get
    }
    

}
