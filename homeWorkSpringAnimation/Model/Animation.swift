//
//  Animation.swift
//  homeWorkSpringAnimation
//
//  Created by Кирилл on 24.07.2023.
//

import Foundation
import SpringAnimation

struct Animation {
    
    var preset: String
    var curve: String
    var force: CGFloat
    var duration: CGFloat
    var delay: CGFloat
    
    static func getAnime() -> Animation {
        
        Animation(
            preset: Animatica.shared.preset.randomElement()?.rawValue ?? "",
            curve: Animatica.shared.curve.randomElement()?.rawValue ?? "",
            force: CGFloat.random(in: 1.1...2),
            duration: CGFloat.random(in: 0.5...1),
            delay: 0.3
        )
        
    }
}

