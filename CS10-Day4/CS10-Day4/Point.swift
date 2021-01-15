//
//  Point.swift
//  CS10-Day4
//
//  Created by 지북 on 2021/01/14.
//

import Foundation

class Point {
    var x : Double
    var y : Double
    
    init(_ point : [Int]) {
        self.x = Double(point[0])
        self.y = Double(point[1])
    }
    
    func getX() -> Double {
        return x
    }
    func getY() -> Double {
        return y
    }
}
