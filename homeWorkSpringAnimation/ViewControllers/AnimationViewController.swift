//
//  AimationViewController.swift
//  homeWorkSpringAnimation
//
//  Created by Кирилл on 24.07.2023.
//

import UIKit
import SpringAnimation

final class AnimationViewController: UIViewController {
    
    //MARK: - IB Outlet
    
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    //MARK: - Privane properties
    
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - IB Action
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

