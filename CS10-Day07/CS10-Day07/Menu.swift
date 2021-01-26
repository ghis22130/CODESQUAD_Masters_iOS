//
//  Menu.swift
//  CS10-Day07
//
//  Created by 지북 on 2021/01/26.
//

import Foundation

enum Menu :Int{
    case 아메리카노 = 1
    case 카페라떼
    case 프라프치노
}

func printMenu() {
    print("""
        메뉴 = 1. 아메리카노(3s).  2. 카페라떼(5s)     3. 프라프치노(10s)
        주문할 음료를 입력하세요. 예) 아메리카노 2개 => 1:2
        """)
}



