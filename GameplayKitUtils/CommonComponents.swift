//
//  CommonComponents.swift
//  GameplayKitUtils
//
//  Created by Jakub Petrík on 1/9/16.
//  Copyright © 2016 Jakub Petrik. All rights reserved.
//

import GameplayKit
import SpriteKit

public class RenderComponent: GKComponent {
	unowned let sprite: SKSpriteNode
	init(sprite: SKSpriteNode) {
		self.sprite = sprite
	}
}

public class PhysicsComponent: GKComponent {
	unowned let physicsBody: SKPhysicsBody
	init(body: SKPhysicsBody) {
		physicsBody = body
	}
}
