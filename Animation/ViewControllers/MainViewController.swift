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
    
    private var animations = Animation.getAnimation()
    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.configure()
        startButton.configure()
        setupLabels()
    }
    
    @IBAction func startAnimation(_ sender: SpringButton) {
        backgroundView.animation = animations[index].preset
        backgroundView.curve = animations[index].curve
        backgroundView.force = animations[index].forse
        backgroundView.duration = animations[index].duration
        backgroundView.animate()
        
        setupLabels()
        
        if index == 100 {
            index = 0
        } else {
            index += 1
        }
        sender.setTitle("Start: \(animations[index].preset)", for: .normal)
    }
}

//MARK: - Private func
extension MainViewController {
    private func setupLabels() {
        presetLabel.text = animations[index].preset
        curveLabel.text = animations[index].curve
        forseLabel.text = String(format: "%.2f", animations[index].forse)
        durationLabel.text = String(format: "%.2f", animations[index].duration)
        delayLabel.text = String(format: "%.2f", animations[index].delay)
    }
}

