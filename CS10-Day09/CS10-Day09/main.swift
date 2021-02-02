//
//  main.swift
//  CS10-Day09
//
//  Created by 지북 on 2021/02/01.
//

import Foundation
import Network

print("""
    +==========================================================+
    1: www.yes24.com  2: www.disney.co.kr  3: www.khan.co.kr  \n4: www.hani.com   5: www.kyobobook.co.kr
    +==========================================================+
    """)

print("Please enter the URL >>",terminator : " ")
let line = readLine()

var requester = Requester(host: NWEndpoint.Host(line!), port: 80, parameter: .tcp)
requester.createConnection()

while requester.running {
    sleep(1)
}
