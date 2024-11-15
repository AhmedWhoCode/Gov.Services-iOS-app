//
//  TabBar.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 22/06/2024.
//

import SwiftUI




struct TabBar: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(named:"SecondaryColor")
        
        UITabBar.appearance().barTintColor = UIColor(named:"SecondaryColor")
        
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        
      //  UINavigationBar.appearance().backgroundColor = .white


    }
    var body: some View {
        
        
        TabView {
            HomeView(contents: ContentModel.featuredData())
                .tabItem {
                    Label("Home",
                          systemImage: "house")
                }
            
            
            ExploreView()
                .tabItem {
                    Label("Explore",
                          systemImage: "magnifyingglass")
                }
            
            ChatBotView()
                .tabItem {
                    Label("ChatAI",
                          systemImage: "person.crop.circle")
                }
            
            
        }.accentColor(.appBackground)
    }
}

#Preview {
    TabBar()
}
