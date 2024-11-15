//
//  HomeView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 21/06/2024.
//

import SwiftUI

struct HomeView: View {
    let contents: [ContentModel]
    
    
    var body: some View {
        
        
       NavigationStack{
            
            
            ZStack{
                Color.appBackground.ignoresSafeArea()
                
                ScrollView(.vertical){
                    
                    VStack(alignment:.leading){
                        TopBar()
                        
                        TitleView(title: "Featured")
                        
                        CardsListView(contents: ContentModel.featuredData())
                        
                        TitleView(title: "Services and information").padding(.top)
                        
                        CardsListView(contents: ContentModel.servicesData())
                        
                        Spacer()
                    }
                }
            }
           //tint color for nav bar back button color,dont remove it.
        }.tint(.white)
        
    }
}

#Preview {
    HomeView(contents: ContentModel.examples())
}


struct TopBar: View {
    let bounds = UIScreen.main.bounds

    var body: some View {
        
        HStack{
            CustomTextView(text: "Welcome")
            Spacer()
            CustomImageView(width: 48.0,height: 48.0,bound: bounds)
            
        }.padding()
        
    }
    
    
}


