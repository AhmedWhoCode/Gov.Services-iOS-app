//
//  TopicsView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 24/06/2024.
//

import SwiftUI

struct TopicsView: View {
    
    var title = "Manage an existing benefits"
    var desc = "find out about overpayments, ."
    
    var body: some View {
        VStack(alignment:.leading){
            CustomTextView(text: title,foregroundColor: .white, fontStyle: .headline,textAlignment: .leading).padding(.bottom,5).frame(maxWidth: .infinity, alignment: .leading)
            
            CustomTextView(text: desc,foregroundColor: .white, fontStyle: .subheadline,textAlignment: .leading).frame(maxWidth: .infinity, alignment: .leading)
            
            
        }.padding(8).frame(width: UIScreen.main.bounds.width - 20,height: 133.0)
        
    }
}

#Preview {
    TopicsView()
}
