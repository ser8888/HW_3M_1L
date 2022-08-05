//
//  ViewController.swift
//  HW_3M_1L
//
//  Created by John Doe on 05/08/2022.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    private var animation = Animation.getNextAnimation()
    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }

    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        
        print(animation.name, animation.force, animation.curve, animation.delay, animation.duration)
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.curve = animation.curve
        animationView.delay = CGFloat(animation.delay)
        animationView.duration = CGFloat(animation.duration)
        animationView.animate()
        
        
    }
    
    
    

}

