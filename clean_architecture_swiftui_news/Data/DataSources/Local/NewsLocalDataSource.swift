//
//  NewRemoteDataSource.swift
//  clean_architecture_swiftui_news
//
//  Created by Tran Thanh Phong on 15/9/25.
//

import Foundation

@preconcurrency import RealmSwift

final class NewsLocalDataSource {

    private let realmProvider = RealmProvider()

    @RealmActor
    func upsert(_ newsObject: NewsObject, update: Bool = false) async  {
        guard
            let storage = await realmProvider.realm(),
            !(update && storage.object(ofType: NewsObject.self, forPrimaryKey: newsObject.id) == nil)
        else { return }

        storage.writeAsync {
            storage.add(newsObject, update: .modified)
        }
    }

    @RealmActor
    func upsert( newsObject: [NewsObject]) async {
        guard
            let storage = await realmProvider.realm()
            
        else { return }

        storage.writeAsync {
            storage.add(newsObject, update: .modified)
        }
    }

    @RealmActor
    func getAllNews() async  -> Results<NewsObject>?{
        guard let storage = await realmProvider.realm() else { return nil }
        return storage.objects(NewsObject.self)
    }

    @RealmActor
    func getFavoriteNews() async  -> Results<NewsObject>?{
        guard let storage = await realmProvider.realm() else { return nil }
        let predicate = "dog.color == Green || bird.color == Green || cat.color == Green"
        return storage.objects(NewsObject.self).filter("isFavorite = 'true'")
    }

    @RealmActor
    func getArticleByUrl(articleUrl: String) async  -> Results<NewsObject>? {
        guard let storage = await realmProvider.realm() else { return nil }
        return storage.objects(NewsObject.self).filter("isFavorite", true)
    }
    
    @RealmActor
    func getFavoriteArticleByUrl(articleUrl: String) async  -> Results<NewsObject>?{
        
        guard let storage = await realmProvider.realm() else { return nil }
        return storage.objects(NewsObject.self).filter("url = '\(articleUrl)'").filter("isFavorite", true)
    }
    
    @RealmActor
    func feedPagingSource(_ movieObject: NewsObject, update: Bool = false) async {
        guard
            let storage = await realmProvider.realm(),
            !(update && storage.object(ofType: NewsObject.self, forPrimaryKey: movieObject.id) == nil)
        else { return }

        storage.writeAsync {
            storage.add(movieObject, update: .modified)
        }
    }
    
    @RealmActor
    func deleteNews(_ newsObject: NewsObject) async {
        guard
            let storage = await realmProvider.realm(),
            let news = storage.object(ofType: NewsObject.self, forPrimaryKey: newsObject.id)
        else { return }

        storage.writeAsync {
            storage.delete(news)
        }
    }
    
    @RealmActor
    func deleteCachedArticles() async {
        guard
            let storage = await realmProvider.realm()
        
        else { return }
        let newsObject = storage.objects(NewsObject.self).filter("isFavorite", false)
        storage.writeAsync {
            storage.delete(newsObject)
        }
    }
    
    @RealmActor
    func deleteAllNews() async {
        guard let storage = await realmProvider.realm() else { return }

        storage.writeAsync {
            storage.delete(storage.objects(NewsObject.self))
        }
    }
    

    
}
