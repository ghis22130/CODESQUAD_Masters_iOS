//
//  CS10-DAY3-Missions.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/11.
//

import Foundation


func mission1() {
    print("---영상클립---")
    Node(3, "bdfa", nil, nil).printNode()
    Node(4, "afaf", nil, nil).printNode()
    Node(5, "abab", nil, nil).printNode()
    Node(6, "acac", nil, nil).printNode()
    Node(7, "bdbd", nil, nil).printNode()
    Node(8, "baaa", nil, nil).printNode()
    Node(9, "cafe", nil, nil).printNode()
    Node(10, "ccef", nil, nil).printNode()
    Node(11, "afcd", nil, nil).printNode()
    Node(12, "fabc", nil, nil).printNode()
    Node(13, "dcba", nil, nil).printNode()
}

func mission2() {
    
    let videoList = DoubleCircularLinkedList()
    let orderList = Set(["add","delete","render","print","exit","insert"])
    while true {
        print("> ", terminator: "")
        let order = readLine()!.split(separator: " ")
        
        if !orderList.contains(String(order[0])) {
            print("Not a valid command.")
            continue
        }
        
        if order.count == 3 {
            if order[0] == "insert" {
                videoList.insert(text: String(order[1]), location: Int(order[2])!)
                videoList.printList()
            } else if order[0] == "delete" {
                videoList.deleteInedex(location: Int(order[2])!)
            } else { continue }
        } else if order.count == 2 {
            if order[0] == "add" {
                videoList.addFirst(text: String(order[1]))
                videoList.printList()
            } else if order[0] == "delete" {
                videoList.deleteNode(name: String(order[1]))
                videoList.printList()
            } else { continue }
        } else {
            if order[0] == "render" {
                print("영상클립: \(videoList.size)개")
                print("전체길이: \(videoList.totalRunningTime)sec")
            } else if order[0] == "exit" {
                print("bye bye~")
                return
            } else if order[0] == "print" {
                videoList.printList()
            } else { continue }
        }
    }
