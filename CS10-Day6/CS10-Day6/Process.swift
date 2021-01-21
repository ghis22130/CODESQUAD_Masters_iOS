//
//  Struct.swift
//  CS10-Day6
//
//  Created by 지북 on 2021/01/21.
//

import Foundation

enum State {
    case Ready
    case Running
    case Waiting
    case Terminated
}

class Process {
    var name : String
    var state : State
    var total : Int
    var proceed : Int
    
    
    init(processName name : String, totalProceed total : Int) {
        self.total = total
        self.name = name
        state = .Ready
        proceed = 0
    }
}
