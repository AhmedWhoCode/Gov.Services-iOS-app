//
//  Helper.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 23/06/2024.
//

import SwiftUI


//func responsiveSize(using width:Float , height:Float ) -> CGFloat {
//    let width = UIScreen.main.bounds.width
//    let height = UIScreen.main.bounds.height
//    let scalingFactor = min(UIScreen.main.bounds.width / 196, 1.0)
//    
//   return wid * scalingFactor
//}


func getResponsiveSize(designWidth: CGFloat, designHeight: CGFloat, isItForWidth: Bool, inBounds bounds: CGRect) -> CGFloat {


  let screenSize = isItForWidth ? bounds.width : bounds.height

  // Prioritize fitting the specified dimension within the screen dimension
  let scalingFactor = min(screenSize / designWidth, 1)

  let responsiveSize = isItForWidth ?
      designWidth * scalingFactor : designHeight * scalingFactor

  return responsiveSize
}
