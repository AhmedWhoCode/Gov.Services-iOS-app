//
//  ExploreViewModel.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 10/07/2024.
//
import SwiftUI

class ExploreViewModel: ObservableObject {
    @Published var searchText: String = ""
    @Published var exploreData: [ExploreModel] = ExploreModel.examples()
    @Published var contentData: [ContentModel] = ContentModel.featuredData() + ContentModel.servicesData()

    var filteredExploreData: [ExploreModel] {
        if searchText.isEmpty {
            return exploreData
        } else {
            return exploreData.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }

    var filteredContentData: [ContentModel] {
        if searchText.isEmpty {
            return contentData
        } else {
            return contentData.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
}
