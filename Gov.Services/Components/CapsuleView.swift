//
//  CapsuleView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 25/06/2024.
//

import SwiftUI

struct CapsuleView: View {
    var title = "HMRC"
    var icon = "chevron.forward"
    
    var body: some View {
        //let bound = UIScreen.main.bounds
      //  HStack{
            //CustomImageView(image: Image(icon),width: 20.0,height: 20.0,bound: bound).padding([.bottom, .leading,.top], 10)

            
        CustomTextView(text: title,foregroundColor: .white,fontStyle: .subheadline).padding( 10).background(Color("SecondaryColor")).clipShape(.capsule)
    }
}

#Preview {
    CapsuleView()
}
