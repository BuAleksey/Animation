//
//  Animation.swift
//  Animation
//
//  Created by Buba on 01.11.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let forse: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    
    static func getAnimation() -> Animation {
        let store = DataStore()
        let randomPreset = Int.random(in: 0..<store.presets.count)
        let randomCurve = Int.random(in: 0..<store.cuves.count)
        let animation = Animation(preset: store.presets[randomPreset], curve: store.cuves[randomCurve], forse: CGFloat.random(in: 0...2), duration: CGFloat.random(in: 0.5...5), delay: 0.30)
        
        return animation
    }
    
}


