//
//  NumberTicket.swift
//  CS10-Day07
//
//  Created by 지북 on 2021/01/25.
//

import Foundation

class OrderList {
    private var orderList : [Int] = []

    func addOrderList(newOrder : Int) {
        orderList.append(newOrder)
    }
    
    func popOrderList() -> Int {
        return orderList.removeFirst()
    }
    
    func printOrderList() {
        var printList = "☕️ 대기 음료 리스트 : "
        orderList.forEach { menu in
            switch menu {
            case 1: printList += "아메리카노 "
            case 2: printList += "까페라떼 "
            case 3: printList += "프라프치노 "
            default: printList += ""
            }
        }
        print(printList)
    }
    
    func isEmptyList() -> Bool {
        return orderList.isEmpty
    }
}
