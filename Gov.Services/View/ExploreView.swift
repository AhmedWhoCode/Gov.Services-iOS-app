//
//  ExploreView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 25/06/2024.
//

import SwiftUI

struct ExploreView: View {
    @StateObject private var exploreViewModel = ExploreViewModel()
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color.appBackground.ignoresSafeArea()
                ScrollView{
                    
                    VStack(alignment:.leading){
                        
                        
                        CustomTextView(text: "More on GOV.UK",foregroundColor: .white,fontStyle: .title2, textAlignment: .leading).padding()
                        
                        if exploreViewModel.filteredExploreData.isEmpty && !exploreViewModel.searchText.isEmpty {
                            
                            Text("Nothing matched")
                                .foregroundColor(.red)
                                .padding()
                        } else {
                            MoreServicesView(contents: exploreViewModel.filteredExploreData)
                                .padding()
                        }
                        CustomTextView(text: "Recommended for you",foregroundColor: .white,fontStyle: .title2, textAlignment: .leading).padding()
                        
                        
                        if exploreViewModel.filteredContentData.isEmpty && !exploreViewModel.searchText.isEmpty {
                            Text("Nothing matched")
                                .foregroundColor(.red)
                                .padding()
                        } else {
                            CardsListView(contents: exploreViewModel.filteredContentData)
                                .padding(.bottom, 5)
                        }
                    }                }
            }
        }.searchable(text: $exploreViewModel.searchText).foregroundStyle(.white).tint(.white)
    }
}
#Preview {
    ExploreView()
}



struct MoreServicesView: View {
    let contents: [ExploreModel]
    
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 170)),
    ]
    
    var body: some View {
        
        LazyVGrid(columns: adaptiveColumn, spacing: 0) {
            
            ForEach(contents) { item in
                NavigationLink{
                    WebView(link: item.linkToWeb).background(.appBackground)
                    
                }
                
                label: {
                    CapsuleView(title: item.title,icon: item.icon).frame(height: 50)
                    
                }
                
            }
            
        }
    }
}
