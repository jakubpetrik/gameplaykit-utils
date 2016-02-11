//
//  SpriteKit+Utils.swift
//  GameplayKitUtils
//
//  Created by Jakub Petrík on 1/9/16.
//  Copyright © 2016 Jakub Petrik. All rights reserved.
//

import GameplayKit

public extension GKEntity {

	@warn_unused_result
	public func forcedComponentForClass<ComponentType : GKComponent>(componentClass: ComponentType.Type) -> ComponentType {
		guard let component = componentForClass(componentClass) else {
			fatalError("\(self) is expected to have \(componentClass) component")
		}
		return component
	}
}

public extension GKStateMachine {

	@warn_unused_result
	public func forcedStateForClass<StateType : GKState>(stateClass: StateType.Type) -> StateType {
		guard let state = stateForClass(stateClass) else {
			fatalError("\(self) is expected to have \(stateClass) state")
		}
		return state
	}
}

