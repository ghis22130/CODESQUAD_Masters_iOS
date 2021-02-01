//
//  main.swift
//  CS10-Day09
//
//  Created by 지북 on 2021/02/01.
//

import Foundation
import Network

//func enterURL() -> String{
//    let line = readLine()?.components(separatedBy: ".")
//    let url = line?[1]
//
//    switch url {
//    case "disney":
//        return Header.disney
//    default:
//
//    }
//}
//
//enterURL()
var requester = Requester(host: "www.disney.co.kr", port: 80, parameter: .tcp)
requester.startConnection()

while requester.running {
    sleep(1)
}
