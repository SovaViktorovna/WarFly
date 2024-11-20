//
//  Cloud.swift
//  WarFly
//
//  Created by Виктория Демченко on 20.11.24.
//

import SpriteKit
import GameplayKit

protocol GameBackgroundSpriteable{
    static func populateSprite(at point: CGPoint ) -> Self
}

final class Cloud: SKSpriteNode, GameBackgroundSpriteable {
    static func populateSprite(at point: CGPoint ) -> Cloud  {
        let cloudImageName = configureName()
        let cloud = Cloud(imageNamed: cloudImageName)
        cloud.setScale(randomScaleFactor)
        cloud.position = point
        cloud.zPosition = 10
        
        return cloud
    }
    
    fileprivate static func configureName() -> String {
        let destribution = GKRandomDistribution(lowestValue: 1, highestValue: 3)
        let randomNumber = destribution.nextInt()
        let imageName = "cl" + "\(randomNumber)"
        
        return imageName
    }
    
    fileprivate  static var randomScaleFactor: CGFloat {
        let destribution = GKRandomDistribution(lowestValue: 15, highestValue: 25)
        let randomNumber = CGFloat(destribution.nextInt()) / 10
        
        return randomNumber
    }
}

