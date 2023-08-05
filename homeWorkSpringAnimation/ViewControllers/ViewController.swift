//
//  ViewController.swift
//  homeWorkSpringAnimation
//
//  Created by Кирилл on 24.07.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
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
        
        changeAnimation()
        changeNameButtons()
    }
}

//MARK: - Private Methods

private extension ViewController {
    
    ///Метод применения анимации
    func isOnAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
    }
    
    ///Метод изменения анимации
    func changeAnimation() {
        
        animation.preset = AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        animation.curve = AnimationCurve.allCases.randomElement()?.rawValue ?? ""
        animation.force = CGFloat.random(in: 1.1...2)
        animation.duration = CGFloat.random(in: 0.5...1)
        animation.delay = 0.3
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
