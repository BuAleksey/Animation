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
    
    static func getAnimation() -> [Animation] {
        let dataStore = DataStore()
        var animations: [Animation] = []
        
        //как сделать бесконечный перебор анимаций по нажатию на кнопку не придумал(
        for _ in 0...100 {
            let randomPreset = Int.random(in: 0..<dataStore.presets.count)
            let randomCurve = Int.random(in: 0..<dataStore.cuves.count)
            let animation = Animation(
                preset: dataStore.presets[randomPreset],
                curve: dataStore.cuves[randomCurve],
                forse: CGFloat.random(in: 0.5...2),
                duration: CGFloat.random(in: 0.5...5),
                delay: 0.30
            )
            animations.append(animation)
        }
        return animations
    }
}


