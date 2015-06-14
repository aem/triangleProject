//
//  main.swift
//  triangleProject
//
//  Created by Adam Markon on 6/14/15.
//  Copyright © 2015 Adam Markon. All rights reserved.
//

import Foundation

// initialize array wtih 21 identical triangles to ensure allocated memory
var triangles = [Triangle](count: 21,
                    repeatedValue: Triangle(Color.Blue, Color.Blue, Color.Blue))

triangles[0] = Triangle(Color.Green, Color.Yellow, Color.Blue)
triangles[1] = Triangle(Color.Yellow, Color.Blue, Color.Red)
triangles[2] = Triangle(Color.Yellow, Color.Red, Color.Green)
triangles[3] = Triangle(Color.Green, Color.Blue, Color.Yellow)
triangles[4] = Triangle(Color.Red, Color.Green, Color.Blue)

triangles[5] = Triangle(Color.Red, Color.Blue, Color.Green)
triangles[6] = Triangle(Color.Red, Color.Blue, Color.Yellow)
triangles[7] = Triangle(Color.Yellow, Color.Blue, Color.Green)
triangles[8] = Triangle(Color.Green, Color.Blue, Color.Red)
triangles[9] = Triangle(Color.Yellow, Color.Red, Color.Blue)

triangles[10] = Triangle(Color.Blue, Color.Green, Color.Yellow)
triangles[11] = Triangle(Color.Blue, Color.Green, Color.Red)
triangles[12] = Triangle(Color.Yellow, Color.Red, Color.Green)
triangles[13] = Triangle(Color.Red, Color.Green, Color.Yellow)
triangles[14] = Triangle(Color.Blue, Color.Red, Color.Green)

triangles[15] = Triangle(Color.Green, Color.Red, Color.Blue)
triangles[16] = Triangle(Color.Blue, Color.Yellow, Color.Red)
triangles[17] = Triangle(Color.Blue, Color.Red, Color.Yellow)
triangles[18] = Triangle(Color.Blue, Color.Yellow, Color.Green)
triangles[19] = Triangle(Color.Yellow, Color.Green, Color.Blue)

triangles[20] = Triangle(Color.Green, Color.Red, Color.Yellow)

for i in 1..<triangles.count {
    for j in i + 1..<triangles.count {
        // opted to assign values mostly for code clarity.
        // no real benefit or harm as array lookup and struct
        // allocation - at least at this size - are effectively equivalent
        let current = triangles[i]
        let comp = triangles[j]
        
        // the triangles can be compared with == because Triangle conforms to
        // the Equatable protocol. See Triangle.swift for more info.
        if (current == comp) {
            print("\(i + 1) and \(j + 1) match", appendNewline: true)
        }
        if (current == comp.rotateLeft()) {
            print("\(i + 1) and \(j + 1) match after rotating \(j + 1)" +
                "counter-clockwise", appendNewline: true)
        }
        if (current == comp.rotateRight()) {
            print("\(i + 1) and \(j + 1) match after rotating \(j + 1)" +
                "clockwise", appendNewline: true)
        }
    }
}