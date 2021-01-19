//
//  assets.swift
//  CS10-Day5
//
//  Created by 지북 on 2021/01/19.
//

import Foundation

typealias Factor = (Int, Int) -> Bool
typealias Sum = (Set<Int>) -> Int
typealias Classifier = (NumberKind) -> Bool
typealias NowFactors = (Int,Factor)->Set<Int>


enum NumberKind {
    case perfect
    case abundant
    case deficient
    case prime
    case none
}
