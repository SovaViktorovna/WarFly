//
//  Background.swift
//  WarFly
//
//  Created by Виктория Демченко on 20.11.24.
//

import SpriteKit

class Background: SKSpriteNode {
    static func populateBackground(at point: CGPoint) -> Background{
        let background = Background(imageNamed: "background")
        background.position = point
        //для фона указываем позицию, чтобы не перекрывал остальные элементы
        background.zPosition = 0
        
        return background
    }
}
