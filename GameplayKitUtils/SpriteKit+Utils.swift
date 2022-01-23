//
//  SpriteKit+Utils.swift
//  GameplayKitUtils
//
//  Created by Jakub Petrík on 1/9/16.
//  Copyright © 2016 Jakub Petrik. All rights reserved.
//

import GameplayKit

public extension GKEntity {
    func forcedComponentForClass<ComponentType : GKComponent>(_ componentClass: ComponentType.Type) -> ComponentType {
		guard let component = component(ofType: componentClass) else {
			fatalError("\(self) is expected to have \(componentClass) component")
		}
		return component
	}
}

public extension GKStateMachine {
    func forcedStateForClass<StateType : GKState>(_ stateClass: StateType.Type) -> StateType {
		guard let state = state(forClass: stateClass) else {
			fatalError("\(self) is expected to have \(stateClass) state")
		}
		return state
	}
}

