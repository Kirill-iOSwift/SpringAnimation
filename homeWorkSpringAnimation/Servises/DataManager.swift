//
//  DataManager.swift
//  homeWorkSpringAnimation
//
//  Created by Кирилл on 01.08.2023.
//

import Foundation
import SpringAnimation

class Animatica {
    
    let preset = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
    static let shared = Animatica()
    private init(){}
}
