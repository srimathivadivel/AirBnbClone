//
//  MainTabView.swift
//  AirBnbClone
//
//  Created by Srimathi  Vadivel  on 6/4/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart") }

            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }

        }
    }
}

#Preview {
    MainTabView()
}
