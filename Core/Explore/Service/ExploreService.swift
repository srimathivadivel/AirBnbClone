//
//  ExploreService.swift
//  AirBnbClone
//
//  Created by Srimathi  Vadivel  on 6/6/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
