//
//  Islands.swift
//  WarFly
//
//  Created by Виктория Демченко on 20.11.24.
//

import SpriteKit
import GameplayKit

class Island: SKSpriteNode {
    static func populateIsland(at point: CGPoint ) -> Island {
        let islandImageName = configureIslandName()
        let island = Island(imageNamed: islandImageName)
        island.setScale(randomScaleFactor)
        island.position = point
        island.zPosition = 1
        island.run(rotateForRandomAngle())
        
        return island
    }
    
    static func configureIslandName() -> String {
        let destribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let randomNumber = destribution.nextInt()
        let imageName = "is" + "\(randomNumber)"
        
        return imageName
    }
    
    static var randomScaleFactor: CGFloat {
        let destribution = GKRandomDistribution(lowestValue: 1, highestValue: 10)
        let randomNumber = CGFloat(destribution.nextInt()) / 10
        
        return randomNumber
    }
    
    static func rotateForRandomAngle() -> SKAction {
        let destribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNumber = CGFloat(destribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNumber * CGFloat(Double.pi / 180), duration: 0)
    }
}
