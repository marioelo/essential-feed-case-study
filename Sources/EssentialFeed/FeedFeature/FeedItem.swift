//
//  File.swift
//  EssentialFeed
//
//  Created by Mario Elorza on 15-12-23.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
