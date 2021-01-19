//
//  mission2.swift
//  CS10-Day5
//
//  Created by 지북 on 2021/01/19.
//

import Foundation

typealias NumberCheck = (Int,Int) -> String

let isPerfect : NumberCheck = { $0 - $1 == $1 ? "perfect":""}
let isAbundent: NumberCheck = { $0 - $1 > $1 ? "abundent":""}
let isDeficient: NumberCheck = { $0 - $1 < $1 ? "deficient":""}
let isPrime: NumberCheck = { $0 - 1 == $1 ? ", prime":"" }

let sumFactors = { number in Set<Int>(1...number).filter{number%$0==0}.reduce(0){$0+$1}}

let printFactor : NumberCheck = { return "\($1) : " + "\(isPerfect($0,$1))" + "\(isAbundent($0,$1))" + "\(isDeficient($0,$1))"  + "\(isPrime($0,$1))" }

(2...100).forEach({print(printFactor(sumFactors($0),$0))})
