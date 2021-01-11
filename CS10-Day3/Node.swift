//
//  File.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/11.
//

import Foundation

class Node : Equatable {
    
    
    let id : Int
    let text : String
    let time : Int
    var next : Node?
    var prev : Node?
    
    init(_ id:Int, _ text:String, _ next:Node?, _ prev:Node?) {
        self.id = id
        self.text = text
        self.time = Int.random(in: 1...20)
        self.next = next
        self.prev = prev
    }
    
    func printNode() {
        print("[\(text), \(time)]", separator: "", terminator: "---")
    }
    
    static func == (left:Node, right:Node) -> Bool {
        return left.id == right.id
    }
}
