//
//  Quadrangle.swift
//  CS10-Day4
//
//  Created by 지북 on 2021/01/14.
//

import Foundation

class Quadrangle : Polygon, CustomStringConvertible {
    var description: String {
        return "사각형의 넓이는 \(self.getArea())"
    }

    override init(_ points: [Point]) {
        super.init(points)
    }

    override func getArea() -> Double {
        var line1 : Double = 0
        var line2 : Double = 0

        for i in 1...3 {
            if points[0].getX() == points[i].getX() {
                line1 = abs(points[0].getY()-points[i].getY())
            } else if points[0].getY() == points[i].getY() {
                line2 = abs(points[0].getX()-points[i].getX())
            }
        }
        return line1 * line2
    }
}
