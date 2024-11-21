//
//  PlayerPlane.swift
//  WarFly
//
//  Created by Виктория Демченко on 20.11.24.
//

import SpriteKit

class PlayerPlane: SKSpriteNode {
    static func populate(at point: CGPoint) -> SKSpriteNode{
        let playerPlaneTexture = SKTexture(imageNamed: "airplane_3ver2_13" )
        let playerPlane = SKSpriteNode(texture: playerPlaneTexture)
        playerPlane.setScale(0.5)
        playerPlane.position = point
        playerPlane.zPosition = 20
        return playerPlane
    }
}
