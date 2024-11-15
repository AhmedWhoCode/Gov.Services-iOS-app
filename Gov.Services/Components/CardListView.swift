//
//  CardListView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 29/06/2024.
//

import SwiftUI

struct CardsListView: View {
    
    let contents: [ContentModel]
    
    var body: some View {

        
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(contents) { item in
                    NavigationLink {
                        if item.isPopularCategory{
                            WebView(link: item.linkToWesbite!).background(.appBackground)
                        }else{
                            DetailView(contents: item.topicsData)
                        }
                    } label: {
                        ServicesContentView(image: item.title,text: item.title)
                            .clipShape(.rect(cornerRadius: 12.0))
                    }

                  
                    
                }
            }.padding(.leading)
            
        }
    }
    
    
}


#Preview {
    CardsListView(contents: ContentModel.examples() )
}
