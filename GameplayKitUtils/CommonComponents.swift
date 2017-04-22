//
//  CommonComponents.swift
//  GameplayKitUtils
//
//  Created by Jakub Petrík on 1/9/16.
//  Copyright © 2016 Jakub Petrik. All rights reserved.
//

import GameplayKit
import SpriteKit

open class RenderComponent: GKComponent {
	open unowned let sprite: SKSpriteNode
	public init(sprite: SKSpriteNode) {
		self.sprite = sprite
        super.init()
	}

	required public init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
}

open class PhysicsComponent: GKComponent {
	open unowned let physicsBody: SKPhysicsBody
	public init(body: SKPhysicsBody) {
		physicsBody = body
        super.init()
	}

	required public init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
}
