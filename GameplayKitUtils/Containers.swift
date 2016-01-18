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

	public mutating func flush() {
		items.removeAll()
	}

	public mutating func flushEach(@noescape body: (T) throws -> ()) rethrows {
		while !isEmpty {
			try body(pop())
		}
	}
}

public struct ArrayMap<T> {
	public let width: Int
	public let height: Int
	private var elements: [T]

	public init(width: Int, height: Int, repeatedValue: T) {
		self.width = width
		self.height = height
		elements = Array(count: width * height, repeatedValue: repeatedValue)
	}

	public subscript(x: Int, y: Int) -> T {
		get {
			return elements[y * width + x]
		}
		mutating set {
			elements[y * width + x] = newValue
		}
	}

	public func forEach(@noescape body: (x: Int, y: Int, element: T) throws -> ()) rethrows {
		for y in 0..<height {
			for x in 0..<width {
				try body(x: x, y: y, element: self[x, y])
			}
		}
	}
}
