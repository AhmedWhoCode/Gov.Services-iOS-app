//
//  TitleView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 29/06/2024.
//

import SwiftUI

struct TitleView: View {
    let title : String
    
    var body: some View {
            
            HStack{
                CustomTextView(text: title,fontStyle: .title2).padding(.leading)
//                Spacer()
//                NavigationLink(destination: DetailView(contents: TopicsModel.benefitsData())) {
//                    CustomTextView(text: "See more",fontStyle: .subheadline)
//                    Image(systemName: "chevron.forward")
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 8 ,height:8)
//                        .foregroundStyle(.white)
//                        .padding(.trailing)
                    
                //}
            }
        
    }
    
    
}


#Preview {
    TitleView(title: "Example")
}
