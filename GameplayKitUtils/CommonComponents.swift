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
	public unowned let sprite: SKSpriteNode
	public init(sprite: SKSpriteNode) {
		self.sprite = sprite
	}
}

public class PhysicsComponent: GKComponent {
	public unowned let physicsBody: SKPhysicsBody
	public init(body: SKPhysicsBody) {
		physicsBody = body
	}
}
