//
//  HUD.swift
//  WarFly
//
//  Created by Виктория Демченко on 25.11.24.
//

import SpriteKit

class HUD: SKNode {
    let scoreBackground = SKSpriteNode(imageNamed: "scores")
    let scoreLable = SKLabelNode(text: "1000")
    let menuButton = SKSpriteNode(imageNamed: "menu")
    let life1 = SKSpriteNode(imageNamed: "life")
    let life2 = SKSpriteNode(imageNamed: "life")
    let life3 = SKSpriteNode(imageNamed: "life")
    
    func configureUI(screenSize: CGSize) {
        scoreBackground.position = CGPoint(x: scoreBackground.size.width + 10, y: screenSize.height - scoreBackground.size.height / 2 - 10)
        scoreBackground.anchorPoint = CGPoint(x: 1.0, y: 0.5)
        scoreBackground.zPosition = 99
        addChild(scoreBackground)
        
        scoreLable.horizontalAlignmentMode = .right
        scoreLable.verticalAlignmentMode = .center
        scoreLable.position = CGPoint(x: -10, y: 3)
        scoreLable.zPosition = 100
        scoreLable.fontName = "AmericanTypewritter-Bolt"
        scoreLable.fontSize = 30
        scoreBackground.addChild(scoreLable)
        
        menuButton.position = CGPoint(x: 20, y: 20)
        menuButton.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        menuButton.zPosition = 100
        menuButton.name = "pause"
        addChild(menuButton)
        
        let lifes = [life1, life2, life3]
        for (index, life) in lifes.enumerated() {
            life.position = CGPoint(x: screenSize.width - CGFloat(index + 1) * (life.size.width + 3), y: 20)
            life.zPosition = 100
            life.anchorPoint = CGPoint(x: 0.0, y: 0.0)
            addChild(life)
        }
    }
}
