//
//  CustomImageView.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 22/06/2024.
//

import SwiftUI

struct CustomImageView: View {
    var image : Image = .init(.crown)
    var width =  48.0
    var height =  48.0
    var bound = UIScreen.main.bounds
    var body: some View {
        image
            .resizable()
            .frame(width:getResponsiveSize(designWidth: width, designHeight: height, isItForWidth: true, inBounds: bound), height: getResponsiveSize(designWidth: width, designHeight: height, isItForWidth: false, inBounds: bound))
            .scaledToFit()
    }
}

#Preview {
    CustomImageView()
}
