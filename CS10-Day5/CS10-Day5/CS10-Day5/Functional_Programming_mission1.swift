////
////  mission1.swift
////  CS10-Day5
////
////  Created by 지북 on 2021/01/19.
////
//
//import Foundation
//
//typealias Factor = (Int, Int) -> Bool
//typealias Sum = (Set<Int>) -> Int
//typealias Classifier = (NumberKind) -> Bool
//typealias NowFactors = (Int,Factor)->Set<Int>
//
//
//enum NumberKind {
//    case perfect
//    case abundant
//    case deficient
//    case prime
//    case none
//}
//
//
//func isPerfect(sum sumFactors: Int, with number: Int) -> Bool {
//    return sumFactors - number == number
//}
//
//func isAbundant(sum sumFactors: Int, with number: Int) -> Bool {
//    return sumFactors - number > number
//}
//
//func isDeficient(sum sumFactors: Int, with number: Int) -> Bool {
//    return sumFactors - number < number
//}
//
//func isPrime(factors: Set<Int>, with number: Int) -> Bool {
//      let primeSet : Set<Int> = [1, number]
//      return number > 1 && (factors == primeSet)
//  }
//
//func sum(with factors: Set<Int>) -> Int {
//    var sum = 0
//    for factor in factors {
//        sum = sum + factor
//    }
//    return sum
//}
//
//func isFactor(origin number: Int, with potentialFactor: Int) -> Bool {
//    return number % potentialFactor == 0
//}
//
//func factors(origin number: Int, check factor:Factor) -> Set<Int> {
//    var factors = Set<Int>()
//    for pod in 1...Int(sqrt(Float(number))) {
//        if factor(number,pod) {
//            factors.insert(pod)
//            factors.insert(number / pod)
//        }
//    }
//    return factors
//}
//
//func classfierAlpha(with number:Int)->Classifier {
//    let nowFactors = factors(origin: number, check: isFactor(origin:with:))
//    let sumFactors = sum(with: nowFactors)
//    
//    return { kind in
//        switch kind {
//        case .perfect:
//            return isPerfect(sum: sumFactors, with: number)
//        case .abundant:
//            return isAbundant(sum: sumFactors, with: number)
//        case .deficient:
//            return isDeficient(sum: sumFactors, with: number)
//        case .prime:
//            return isPrime(factors: nowFactors, with: number)
//        case .none:
//            return false
//        }
//    }
//}
//
//
//func classfierAlpha2(_ f1: @escaping Factor, _ f2: @escaping NowFactors, _ f3: @escaping Sum, with number:Int)->Classifier {
//    return { kind in
//        switch kind {
//        case .perfect:
//            return isPerfect(sum: f3(f2(number,f1)), with: number)
//        case .abundant:
//            return isAbundant(sum: f3(f2(number,f1)), with: number)
//        case .deficient:
//            return isDeficient(sum: f3(f2(number,f1)), with: number)
//        case .prime:
//            return isPrime(factors: f2(number,f1), with: number)
//        case .none:
//            return false
//        }
//    }
//}
