//
//  Animation.swift
//  HW_3M_1L
//
//  Created by John Doe on 05/08/2022.
//
struct Animation {
    
    var name: String
    var curve: String
    var force: Float
    var duration: Float
    var delay: Float
    
    static func getNextAnimation() -> Animation {
        Animation(name: AnimationTypes.shared.animationName.randomElement() ?? "shake",
                  curve: AnimationTypes.shared.curveName.randomElement() ?? "spring",
                  force: Float.random(in: 1...3),
                  duration: Float.random(in: 1...2),
                  delay: Float.random(in: 0.1...0.4)
        )
    }
}
