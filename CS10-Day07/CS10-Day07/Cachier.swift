//
//  Cachier.swift
//  CS10-Day07
//
//  Created by 지북 on 2021/01/25.
//

import Foundation


class Cachier {
    var orderList : OrderList
    
    init(_ orderList: OrderList) {
        self.orderList = orderList
    }
    
    func takeOrder() {
            print(">",terminator:" ")
            let order = readLine()!.components(separatedBy: ":").map{Int($0)!}
            let menu = order[0]
            let count = order[1]
            for _ in 0..<count { orderList.addOrderList(newOrder: menu) }
        
    }
}
