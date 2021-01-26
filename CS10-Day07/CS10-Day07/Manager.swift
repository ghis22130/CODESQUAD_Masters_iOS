//
//  Manager.swift
//  CS10-Day07
//
//  Created by 지북 on 2021/01/25.
//

import Foundation

class Manager {
    var orderList : OrderList
    var baristar : Baristar
    
    init(_ orderList: OrderList, _ baristar : Baristar){
        self.orderList = orderList
        self.baristar = baristar
    }
    
    // 1초마다 OrderList 확인해서 바리스타 주문 받을 수 있으면 오더 넘겨주기
    func deliverOrder() {
        DispatchQueue.global().async { [self] in
            while true {
                if !orderList.isEmptyList() && baristar.isPossible(){
                    orderList.printOrderList()
                    let newOrder = orderList.popOrderList()
                    baristar.acceptOrder(newOrder)
                }
                sleep(1)
            }
        }
    }
    
    
}
