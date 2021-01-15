//
//  Line.swift
//  CS10-Day4
//
//  Created by 지북 on 2021/01/14.
//

import Foundation

class Line : Polygon, CustomStringConvertible {
    var description: String {
        return "두 점 사이의 거리는 \(self.getArea())"
    }
    
    override init(_ points: [Point]) {
        super.init(points)
    }
    
    override func getArea() -> Double {
        let length = sqrt(pow((points[0].getX()-points[1].getX()), 2.0) + pow((points[0].getY()-points[1].getY()), 2.0))
        return length
    }
}
