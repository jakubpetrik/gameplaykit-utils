//
//  Containers.swift
//  GameplayKitUtils
//
//  Created by Jakub Petrík on 1/12/16.
//  Copyright © 2016 Jakub Petrik. All rights reserved.
//

import Foundation

public struct Stack<T> {
	fileprivate var items = [T]()

	public var isEmpty: Bool {
		return items.isEmpty
	}

	public init() {}

	public mutating func push(_ item: T) {
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

	public mutating func flushEach(body: (T) throws -> ()) rethrows {
		while !isEmpty {
			try body(pop())
		}
	}
}

public struct ArrayMap<T> {
	public let width: Int
	public let height: Int
	fileprivate var elements: [T]

	public init(width: Int, height: Int, repeatedValue: T) {
		self.width = width
		self.height = height
		elements = Array(repeating: repeatedValue, count: width * height)
	}

	public subscript(x: Int, y: Int) -> T {
		get {
			return elements[y * width + x]
		}
		mutating set {
			elements[y * width + x] = newValue
		}
	}

	public func forEach(body: (_ x: Int, _ y: Int, _ element: T) throws -> ()) rethrows {
		for y in 0..<height {
			for x in 0..<width {
				try body(x, y, self[x, y])
			}
		}
	}

	public mutating func setElements(_ newElements: [[T]]) {
		guard newElements.count == height && newElements[0].count == width else {
			fatalError("Invalid number of elements!")
		}

		for y in 0..<height {
			for x in 0..<width {
				self[x, y] = newElements[y][x]
			}
		}
	}
}
