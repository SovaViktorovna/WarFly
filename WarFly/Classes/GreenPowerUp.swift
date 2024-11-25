//
//  GreenPowerUp.swift
//  WarFly
//
//  Created by Виктория Демченко on 22.11.24.
//

import SpriteKit

class GreenPowerUp: PowerUp {
    init() {
        let textureAtlas = Assets.shared.greenPowerUpAtlas
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
