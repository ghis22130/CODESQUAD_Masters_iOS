//
//  Baristar.swift
//  CS10-Day07
//
//  Created by 지북 on 2021/01/25.
//

import Foundation


class Baristar {
    var ingNumber = 0
    var orderList : OrderList
    
    init(_ orderList : OrderList) {
        self.orderList = orderList
    }
    
    // 음료 만들기
    func makeDrink(_ menu : Int) {
        let newMenu : Menu = Menu(rawValue: menu)!
        let second : Int
        
        switch newMenu {
        case .아메리카노: second = 3
        case .카페라떼: second = 5
        case .프라프치노: second = 10
        }
        
        print("👉 \(newMenu) 시작")
        DispatchQueue.global().async { [self] in
            sleep(UInt32(second))
            print("👋 \(newMenu) 완성")
            ingNumber -= 1
            if orderList.isEmptyList() && ingNumber == 0 { print("❕ 모든 메뉴의 제조가 완료 되었습니다.")}
        }
        

    }
    // 매니저가 넘겨준 오더 받기
    func acceptOrder(_ order : Int) {
        let menu = order
        ingNumber+=1
        self.makeDrink(menu)
    }
    // 저 추가 주문 받을 수 있어용~
    func isPossible() -> Bool {
        return ingNumber < 2 ? true:false
    }
}
