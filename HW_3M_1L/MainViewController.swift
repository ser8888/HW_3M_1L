//
//  ViewController.swift
//  HW_3M_1L
//
//  Created by John Doe on 05/08/2022.
//
import UIKit
import SpringAnimation

class MainViewController: UIViewController {
    
    @IBOutlet weak var buttonLabel: UIButton!
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    @IBOutlet weak var curveLavle: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    private var animation = Animation.getNextAnimation()
    
    @IBAction func animationButtonPressed(_ sender: SpringButton) {
        
        animationLabel.text = "animation --  " + animation.name
        curveLavle.text = "curve --  " + animation.curve
        forceLabel.text = "force --  " + String(format: "%.01f", (animation.force))
        durationLabel.text = "duration --  " + String(format: "%.01f", (animation.duration))
        delayLabel.text = "delay --  " + String(format: "%.01f", (animation.delay))
        
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.curve = animation.curve
        animationView.delay = CGFloat(animation.delay)
        animationView.duration = CGFloat(animation.duration)
        animationView.animate()
        
        animation = Animation.getNextAnimation()
        buttonLabel.setTitle(animation.name + " , " + animation.curve, for: .normal)
        
    }
}

