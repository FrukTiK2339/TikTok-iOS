//
//  ExploreSection.swift
//  TikTok
//
//  Created by Дмитрий Рыбаков on 22.11.2022.
//

import Foundation
import UIKit

struct ExploreSection {
    let type: ExploreSectionType
    let cells: [ExploreCell]
}

enum ExploreSectionType: CaseIterable {
    case banners
    case trendingPosts
    case trendingHashtags
    case users
    case recommended
    case popular
    case new
    
    var title: String {
        switch self {
        case .banners:
            return "Features"
        case .trendingPosts:
            return "Trending Videos"
        case .trendingHashtags:
            return "Hashtags"
        case .users:
            return "Popular Creators"
        case .recommended:
            return "Recommended"
        case .popular:
            return "Popular"
        case .new:
            return "Recently Posted"
        }
    }
}

enum ExploreCell {
    case banner(viewModel: ExploreBannerViewModel)
    case post(viewModel: ExplorePostViewModel)
    case hashtag(viewModel: ExploreHashtagViewModel)
    case user(viewModel: ExploreUserViewModel)
}

struct ExploreBannerViewModel {
    let image: UIImage?
    let title: String
    let handler: (() -> Void)
}

struct ExplorePostViewModel {
    let thumbnailImage: UIImage?
    let caption: String
    let handler: (() -> Void)
}

struct ExploreHashtagViewModel {
    let icon: UIImage?
    let text: String
    let count: Int
    let handler: (() -> Void)
}

struct ExploreUserViewModel {
    let profilePictureURL: URL?
    let username: String
    let followerCount: Int
    let handler: (() -> Void)
}
