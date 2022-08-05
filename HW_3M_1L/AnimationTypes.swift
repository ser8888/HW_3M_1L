//
//  AnimationModel.swift
//  HW_3M_1L
//
//  Created by Sergejs Tiselskis on 05/08/2022.
//

import UIKit
import SpringAnimation

class AnimationTypes {

    static let shared = AnimationTypes()

    let animationName = [
    "shake","pop","morph","squeeze","wobble","swing","flipX",
    "flipY","fall","squeezeLeft","squeezeRight","squeezeDown","squeezeUp",
    "slideLeft","slideRight","slideDown","slideUp","fadeIn","fadeOut",
    "fadeInLeft","fadeInRight","fadeInDown","fadeInUp",
    "zoomIn","zoomOut","flash"
    ]
    
    let curveName = [
    "spring","linear","easeIn","easeOut","easeInOut"
    ]
    
    private init() {}
    
}
