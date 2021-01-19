////
////  main.swift
////  CS10-Day5
////
////  Created by 지북 on 2021/01/18.
////
//
import Foundation


//print("====Classfier1====")
//let classfier = classfierAlpha(with: 10)
//print(classfier(.abundant))
//print(classfier(.deficient))
//print(classfier(.perfect))
//print(classfier(.prime))
//
//print("\n====Classfier2====")
//let classfier2 = classfierAlpha2(isFactor(origin:with:), factors(origin:check:), sum(with:), with: 10)
//print(classfier2(.abundant))
//print(classfier2(.deficient))
//print(classfier2(.perfect))
//print(classfier2(.prime))

print("\n===Classfier3====")
(2...100).forEach({print(printFactor(sumFactors($0),$0))})

