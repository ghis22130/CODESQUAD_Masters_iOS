//
//  NumberTicket.swift
//  CS10-Day07
//
//  Created by 지북 on 2021/01/25.
//

import Foundation

struct NumberTicket : Delegate{
    private var numberTicket : [Int] = []

    let
    mutating func addNumberTicket(newOrder : Int) {
        numberTicket.append(newOrder)
    }
    
    mutating func popNumberTicket() -> Int{
        return numberTicket.removeFirst()
    }
    
    func printNumberTicket() {
        
    }
    
    func isEmptyTicket() -> Bool {
        return numberTicket.isEmpty
    }
    
}
