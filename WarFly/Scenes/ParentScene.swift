//
//  ParentScene.swift
//  WarFly
//
//  Created by Виктория Демченко on 27.11.24.
//

import SpriteKit

class ParentScene: SKScene {
    let sceneManager = SceneManager.shared
    var backScene: SKScene?
    
    func setHeader(widthName name: String?, andBackground backgroundName: String) {
        let header = ButtonNode(titled: name, backgroundName: backgroundName)
        header.position = CGPoint(x: self.frame.midX, y: self.frame.midY + 150)
        self.addChild(header)
    }
}
