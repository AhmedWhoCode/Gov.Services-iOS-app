//
//  LaunchScreen.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 20/06/2024.
//

import SwiftUI

struct LaunchView: View {
    @State private var enteredText = ""
    
    var body: some View {
        ZStack{
            Color.appBackground.ignoresSafeArea()
            
            
            VStack{
                Spacer()
                Image(.crown)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.height / 5)
                    .scaledToFill()
                
                CustomTextView()
                
                Spacer()
                
                Button("Continue") {
                  // some code
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .frame(height: 52)
                .background(Color(.secondary))
                .cornerRadius(10)
                .padding(.all,20)



            }
        }

    }
}

#Preview {
    LaunchView()
}
