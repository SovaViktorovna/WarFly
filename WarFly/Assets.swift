//
//  Assets.swift
//  WarFly
//
//  Created by Виктория Демченко on 22.11.24.
//

import SpriteKit

class Assets{
    static let shared = Assets()
    let yellowShotAtlas = SKTextureAtlas(named: "YellowShot")
    let bluePowerUpAtlas = SKTextureAtlas(named: "BluePowerUp")
    let greenPowerUpAtlas = SKTextureAtlas(named: "GreenPowerUp")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    let playerPlaneAtlas = SKTextureAtlas(named: "PlayerPlane")
    
    func preloadAssets() {
        yellowShotAtlas.preload {print("yellowShotAtlas preloaded")}
        bluePowerUpAtlas.preload {print("bluePowerUpAtlas preloaded")}
        greenPowerUpAtlas.preload {print("greenPowerUpAtlas preloaded")}
        enemy_2Atlas.preload {print("enemy_2Atlas preloaded")}
        enemy_1Atlas.preload {print("enemy_1Atlas preloaded")}
        playerPlaneAtlas.preload {print("playerPlaneAtlas preloaded")}
    }
}
