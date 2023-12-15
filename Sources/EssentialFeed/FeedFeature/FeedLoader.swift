//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mario Elorza on 15-12-23.
//

import Foundation

typealias LoadFeedResult = Result<[FeedItem], Error>

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
