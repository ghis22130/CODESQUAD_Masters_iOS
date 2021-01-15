//
//  Triangle.swift
//  CS10-Day4
//
//  Created by 지북 on 2021/01/14.
//

import Foundation

class Triangle : Polygon, CustomStringConvertible {
    var description: String {
        return "삼각형의 넓이는 \(self.getArea())"
    }
    
    override init(_ points : [Point]) {
        super.init(points)
    }
    
    override func getArea() -> Double {
        var lines : [Double] = []
        
        for i in 0...1 {
            for j in (i+1)...2 {
                lines.append(Line([points[i],points[j]]).getArea())
            }
        }
        
        let area = sqrt((lines[0]+lines[1]+lines[2])*(-lines[0]+lines[1]+lines[2])*(lines[0]-lines[1]+lines[2])*(lines[0]+lines[1]-lines[2]))/4
        return area
    }
}
