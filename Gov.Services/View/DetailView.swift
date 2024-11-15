//
//  DetailView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 24/06/2024.
//

import SwiftUI

struct DetailView: View {
    @State private var searchText = ""
    let contents: [TopicsModel]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.appBackground.ignoresSafeArea()
                VStack(alignment:.leading){
                    CustomTextView(text: "Topics",fontStyle: .title2).padding(.leading,10).padding(.top,5)
                    
                    ScrollView(.vertical) {
                        
                        
                        ForEach(contents) { item in
                            NavigationLink{
                                
                                WebView(link: item.linkToWeb!).background(.appBackground)
                                
                            }
                            
                            label:{
                                TopicsView(title: item.title,desc: item.desc)
                                    .background(.cardBackground)
                                    .padding(5)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                                
                            }
                            
                            
                        }.offset(y:10)
                        
                    }
                }
                
                
                
            }
        }/*.searchable(text: $searchText).tint(.white)*/
    }
}
#Preview {
    DetailView(contents: TopicsModel.benefitsData())
}




