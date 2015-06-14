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

    // all sides of `Triangle`s should be immutable
    let bottom: Color
    let right: Color
    let left: Color
    
    // MARK: - Constructors
    /** 
    Override constructor to remove names for parameters.
    Triangle(bottom: x, left: y, right: z) will get tedious
    */
    init(_ bottom: Color, _ right: Color, _ left: Color) {
        self.bottom = bottom
        self.right = right
        self.left = left
    }
    
    // MARK: - Factory Methods
    /** 
    Returns a new Triangle rotated 120 degrees clockwise
    */
    public func rotateRight() -> Triangle {
        return Triangle(self.right, self.left, self.bottom)
    }
    
    /** 
    Returns a new Triangle rotated 120 degrees counter-clockwise
    */
    public func rotateLeft() -> Triangle {
        return Triangle(self.left, self.bottom, self.right)
    }
}

//MARK: - Non-struct functions
/**
Function must be provided at the global scope to properly implement
`Equatable` protocol. This allows us to easily compare `Triangle`s
*/
public func ==(lhs: Triangle, rhs: Triangle) -> Bool {
    return lhs.bottom == rhs.bottom &&
        lhs.left == rhs.left &&
        lhs.right == rhs.right
}