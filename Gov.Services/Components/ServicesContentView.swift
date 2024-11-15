//
//  ServicesContentView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 22/06/2024.
//

import SwiftUI

struct ServicesContentView: View {
    
    var image = "gov"
    var text = "HMRC account: sign in or set up HMRC account: sign in or set up"
    var imageWidht = 196.0
    var imageHeight = 130.0
    
    
    var body: some View {
        
        let bounds = UIScreen.main.bounds
        let responsiveWidth = getResponsiveSize(designWidth: 196, designHeight: 232, isItForWidth: true, inBounds: bounds)
        let responsiveHeight = getResponsiveSize(designWidth: 196, designHeight: 232, isItForWidth: false, inBounds: bounds)
            VStack(alignment:.leading){
                Image(image)
                    .resizable()
                    .frame(height:130)
                    .scaledToFit()
                
                CustomTextView(text:text,fontStyle: .title3,textAlignment: .leading).padding(8)
                Spacer()
                
            }.frame(width: responsiveWidth,height: responsiveHeight)
                .background(.cardBackground)
        
    }
}

#Preview {
    ServicesContentView()
}
