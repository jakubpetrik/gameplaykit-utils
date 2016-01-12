//
//  Containers.swift
//  GameplayKitUtils
//
//  Created by Jakub Petrík on 1/12/16.
//  Copyright © 2016 Jakub Petrik. All rights reserved.
//

import Foundation

public struct Stack<T> {
	private var items = [T]()

	public var isEmpty: Bool {
		return items.isEmpty
	}

	public init() {}

	public mutating func push(item: T) {
		items.append(item)
	}

	public mutating func pop() -> T {
		return items.removeLast()
	}

	public func peek() -> T? {
		return items.last
	}
}
