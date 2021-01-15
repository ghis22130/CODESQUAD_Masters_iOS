//
//  InputView.swift
//  CS10-Day4
//
//  Created by 지북 on 2021/01/14.
//

import Foundation


struct InputView {
    func inputPoint() -> [Point]? {
        print("> 좌표를 입력하세요")
        let line = readLine()!.split(separator: "-")
        var pointList : [Point] = []
        
        for i in line {
            guard let newPoint = createPoint(String(i)) else { return nil }
            pointList.append(newPoint)
        }
        return pointList
    }
    func createPoint(_ point: String) -> Point? {
        var tempPoint = point
        
        tempPoint.removeLast()
        tempPoint.removeFirst()
        
        let newPoint = tempPoint.split(separator: ",").map{Int($0)!}    //이상한값 받으면 오류처리..?
        
        if newPoint[0] > 24 || newPoint[1] > 24 { return nil }
        return Point(newPoint)
    }
}
