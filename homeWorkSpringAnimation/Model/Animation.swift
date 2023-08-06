//
//  Animation.swift
//  homeWorkSpringAnimation
//
//  Created by Кирилл on 24.07.2023.
//

import Foundation
import SpringAnimation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
    """
    preset: \(preset)
    curve: \(curve)
    force: \(String(format: "%.02f", force))
    duration: \(String(format: "%.02f", duration))
    delay: \(String(format: "%.02f", delay))
    """
    }
    
    static func getRandomAnimation() -> Animation {
        
        Animation(
            preset: DataManager.shared.preset.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curve.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1.1...2),
            duration: Double.random(in: 0.5...1),
            delay: 0.3
        )
        
    }
}

