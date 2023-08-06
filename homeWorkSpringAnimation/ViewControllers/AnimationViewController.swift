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
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var springAnimationButton: UIButton!
    
    private var animation = Animation.getAnime()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 15
        springAnimationButton.layer.cornerRadius = 10
        
        isOnAnimation()
        changeLabel()
    }
    
    //MARK: - IB Action
    
    @IBAction func getSpringAnimationButton() {
        isOnAnimation()
        changeLabel()
        
        springAnimationView.animate()
        
        animation = Animation.getAnime()
        changeNameButtons()
    }
}

//MARK: - Private Methods

private extension AnimationViewController {
    
    ///Метод применения анимации
    func isOnAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
    
    ///Метод смены названий в леблах
    func changeLabel() {
        presetLabel.text = "Preset: \(springAnimationView.animation)"
        curveLabel.text = "Curve: \(springAnimationView.curve)"
        forceLabel.text = "Force: \(String(format:"%.2f",springAnimationView.force))"
        durationLabel.text = "Duration: \(String(format:"%.2f",springAnimationView.duration))"
        delayLabel.text = "Delay: \(String(format:"%.2f",springAnimationView.delay))"
    }
    
    ///Метод смены названия кнопки
    func changeNameButtons() {
        springAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }
}
