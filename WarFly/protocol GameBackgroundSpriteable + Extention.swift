//
//  protocol GameBackgroundSpriteable + Extention.swift
//  WarFly
//
//  Created by Виктория Демченко on 21.11.24.
//

import SpriteKit
import GameplayKit

protocol GameBackgroundSpriteable{
    static func populate() -> Self
    static func randomPoint() -> CGPoint
}

extension GameBackgroundSpriteable{
    static func randomPoint() -> CGPoint {
        let screen = UIScreen.main.bounds
        let destribution = GKRandomDistribution(lowestValue: Int(screen.size.height) + 100, highestValue: Int(screen.size.height) + 200)
        let y = CGFloat(destribution.nextInt())
        let x = CGFloat(GKRandomSource.sharedRandom().nextInt(upperBound: Int(screen.size.width )))
        
        return CGPoint(x: x, y: y)
    }
}
