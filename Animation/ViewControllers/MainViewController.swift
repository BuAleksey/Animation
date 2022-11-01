//
//  ViewController.swift
//  Animation
//
//  Created by Buba on 01.11.2022.
//

import UIKit
import SpringAnimation

class MainViewController: UIViewController {

    @IBOutlet var backgroundView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forseLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var startButton: UIButton!
    
    var animation: Animation {
        Animation.getAnimation()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.configure()
        startButton.configure()
        setupLabels()
    }
    
    @IBAction func startAnimation(_ sender: SpringButton) {
        
        setupLabels()
        
        sender.setTitle("Start: \(animation.preset)", for: .normal)
        
        backgroundView.animation = animation.preset
        backgroundView.curve = animation.curve
        backgroundView.force = animation.forse
        backgroundView.duration = animation.duration
        backgroundView.animate()
    }
}

//MARK: - Private func
extension MainViewController {
    private func setupLabels() {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forseLabel.text = String(format: "%.2f", animation.forse)
        durationLabel.text = String(format: "%.2f", animation.duration)
        delayLabel.text = String(format: "%.2f", animation.delay)
    }
}

