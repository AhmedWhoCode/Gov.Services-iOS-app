//
//  CustomTextView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 22/06/2024.
//

import SwiftUI

struct CustomTextView: View {
    var text = "Welcome to Gov.services"
    var foregroundColor = Color.white
    var fontStyle = Font.title2
    var textAlignment : TextAlignment = .center
    var body: some View {
        Text(text)
            .foregroundStyle(foregroundColor)
            .font(fontStyle)
            .multilineTextAlignment(textAlignment)
    }
}

#Preview {
    CustomTextView()
}
