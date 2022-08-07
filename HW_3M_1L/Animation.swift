//
//  Animation.swift
//  HW_3M_1L
//
//  Created by John Doe on 05/08/2022.
//
struct Animation {
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getNextAnimation() -> Animation {
        Animation(name: AnimationTypes.shared.animationName.randomElement() ?? "shake",
                  curve: AnimationTypes.shared.curveName.randomElement() ?? "spring",
                  force: Double.random(in: 1...3),
                  duration: Double.random(in: 1...2),
                  delay: Double.random(in: 0.1...0.4)
        )
    }
}
