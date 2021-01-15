//
//  main.swift
//  CS10-Day4
//
//  Created by 지북 on 2021/01/14.
//

import Foundation

let inputView = InputView()
let classify = Classify()

while true {
    guard let points : [Point] = inputView.inputPoint() else {
        print("Size is over")
        continue
    }

    let anyPolygon = classify.classifyPolygon(points)

    switch anyPolygon {
    case .Line:
        print(Line(points))
    case .Triangle:
        print(Triangle(points))
    case .Quadrangle:
        print(Quadrangle(points))
    default:
        print("")
    }
}


//(10,10)-(14,15)
//(10,10)-(14,15)-(20,8)
//(10,10)-(22,10)-(22,18)-(10,18)
