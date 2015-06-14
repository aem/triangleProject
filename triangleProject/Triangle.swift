//
//  triangle.swift
//  TriangleProject
//
//  Created by Adam Markon on 6/13/15.
//  Copyright © 2015 Adam Markon. All rights reserved.
//

import Foundation

public struct Triangle : Equatable {
    // MARK: - Instance Variables

    // all sides of `Triangle`s are immutable
    let bottom: Color
    let right: Color
    let left: Color
    
}

/**
    Function must be provided at the global scope to properly implement
    `Equatable` protocol. This allows us to easily compare `Triangle`s
*/
public func ==(lhs: Triangle, rhs: Triangle) -> Bool {
    return lhs.bottom == rhs.bottom &&
        lhs.left == rhs.left &&
        lhs.right == rhs.right
}