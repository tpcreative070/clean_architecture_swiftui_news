//
//  NewRepository.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 16/9/25.
//

protocol NewsRepository {
    
    func upsert(newArticle : News)
    
    func upsert(newArticles : [News])
    
    func getAllNews() -> [News]
    
    func getFavoriteNews() -> [News]
    
    func getArticleByUrl(articleUrl: String) -> News
    
    func getFavoriteArticleByUrl(articleUrl: String) -> News
    
    func feedPagingSource() -> [Int: News]
    
    func deleteNews(newsArticle: News)
    
    func deleteCachedArticles()
    
    func deleteAllNews()
    
}
