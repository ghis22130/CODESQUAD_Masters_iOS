//
//  main.swift
//  CS10-Day07
//
//  Created by 지북 on 2021/01/25.
//

import Foundation


func main(_ cachier : Cachier, _ baristar : Baristar, _ manager: Manager, _ orderList : OrderList) {
    print("""
        메뉴 = 1. 아메리카노(3s).  2. 카페라떼(5s)     3. 프라프치노(10s)
        주문할 음료를 입력하세요. 예) 아메리카노 2개 => 1:2
        """)
    manager.deliverOrder()
    while true {
    cachier.takeOrder()
    }
}


let orderList = OrderList()
let cachier = Cachier(orderList)
let baristar = Baristar(orderList)
let manager = Manager(orderList,baristar)

main(cachier,baristar,manager,orderList)
