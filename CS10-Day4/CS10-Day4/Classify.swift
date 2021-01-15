//
//  Operator.swift
//  CS10-Day4
//
//  Created by 지북 on 2021/01/14.
//

import Foundation

enum polygon {
    case Line
    case Triangle
    case Quadrangle
    case none
}


struct Classify {
    func classifyPolygon(_ points : [Point]) -> polygon{
        switch points.count {
        case 2 :
            return .Line
        case 3 :
            return .Triangle
        case 4 :
            return .Quadrangle
        default:
            return .none
        }
    }
}
