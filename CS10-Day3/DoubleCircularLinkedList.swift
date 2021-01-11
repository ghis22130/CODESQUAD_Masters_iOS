//
//  Linkedlist.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/11.
//

import Foundation

class DoubleCircularLinkedList {
    var head : Node?
    var tail : Node?
    var size : Int = 0
    var id : Int = 0
    var totalRunningTime = 0
    
    //MARK:- 리스트 첫번째에 노드 추가
    func addFirst(text:String){
        if head == nil {                            //리스트가 비어있을 경우
            head = Node(id, text, nil, nil)
            tail = head
            totalRunningTime += head!.time
        }
        else {
            let newNode = Node(id, text, nil, nil)
            newNode.prev = tail
            newNode.next = head
            head?.prev = newNode
            head = newNode
            tail?.next = head
            totalRunningTime += newNode.time
        }
        size += 1
        id+=1
    }
    
    //MARK:- 리스트 마지막에 노드 추가
    func addLast(text:String){
        if head == nil {                       //리스트가 비어있을 경우
            head = Node(id, text, nil, nil)
            tail = head
            totalRunningTime += head!.time
        }
        else {
            let newNode = Node(id, text, nil, nil)
            newNode.next = head
            newNode.prev = tail
            
            tail?.next = newNode
            head?.prev = newNode
            tail = newNode
            totalRunningTime += newNode.time
        }
        size+=1
        id+=1
    }
    
    //MARK:- 넣고 싶은 위치받아서 노드 추가
    func insert(text:String, location:Int){
        if location > size {                //리스트 크기보다 큰 위치 입력 시
            print("존재하지 않는 위치입니다. 마지막에 추가합니다")
            addLast(text:text)
        }
        if head == nil {                    //리스트가 비어있는 경우
            head = Node(id, text, nil, nil)
            totalRunningTime += head!.time
        } else {
            var pointer = head
            let newNode = Node(id, text, nil, nil)
            for _ in 0..<location {
                pointer = pointer?.next
            }
            newNode.next = pointer
            newNode.prev = pointer?.prev
            
            pointer?.prev?.next = newNode
            pointer?.prev = newNode
            
            if pointer == head {
                head = newNode
            }
            
            totalRunningTime += newNode.time
        }
        id+=1
        size+=1
    }
    
    //MARK: - 리스트 첫번째 노드 삭제 함수
    func deleteFirst(){
        if head == nil {                //리스트가 비어있는 경우
            print("List is empty")
        } else if head?.next == nil {   //리스트 원소가 하나 있는 경우
            head = nil
            size = 0
            totalRunningTime = 0
        } else{
            head?.next?.prev = tail
            tail?.next = head?.next
            totalRunningTime -= head!.time
            head = head?.next
            size -= 1
        }
        
    }
    //MARK: - 리스트 마지막 노드 삭제 함수
    func deleteLast(){
        if head == nil {              //리스트가 비어있는 경우
            print("List is empty")
        } else if head?.next == head{   //리스트 원소가 하나 있는 경우
            head = nil
            tail = nil
        } else {
            tail?.prev?.next = head
            head?.prev = tail?.prev
            totalRunningTime -= tail!.time
            
            tail = tail?.prev
            size -= 1
        }
    }
    
    //MARK:- 삭제할 노드 이름받아 삭제
    func deleteNode(name : String){
        var pointer = head
        
        if head == nil {                        //리스트가 비어있는 경우
            print("List is empty")
            return
        }
        while pointer?.text != name {           //입력 받은 이름 찾아 순회
            pointer = pointer?.next
            if pointer == tail && pointer?.text != name {   //마지막 노드 까지 순회하였는데 이름이 리스트에 없는 경우
                print("Can't find file")
                return
            }
        }
        if pointer == head {            //삭제할 노드가 head인 경우
            if pointer?.next == head {  //삭제할 노드가 head이면서 리스트 원소가 하나인 경우
                head = nil
                tail = nil
                return
            }
            head = pointer?.next
        } else if pointer == tail {     //삭제할 노드가 tail인 경우
            tail = pointer?.prev
        }
        let tempNode = pointer
        tempNode?.prev?.next = pointer?.next
        tempNode?.next?.prev = pointer?.prev
        size -= 1
        totalRunningTime -= pointer!.time
    }
    
    //MARK:- 삭제할 위치 받아 노드 삭제
    func deleteInedex(location : Int) {
        if head == nil {                //리스트 존재 하지 않을 경우
            print("List is empty")
        } else if location > size {     //리스트 크기보다 큰 숫자 입력시
            print("존재하지 않는 위치입니다. 마지막 영상 삭제합니다.")
            deleteLast()
        } else if head?.next == nil {   //리스트 원소가 하나 존재 할 경우
            head = nil
            tail = nil
            size = 0
            totalRunningTime = 0
        } else {                        //리스트 원소가 두개 이상일 경우
            var pointer = head
            for _ in 0..<location {
                pointer = pointer?.next
            }
            let tempNode = pointer
            tempNode?.prev?.next = pointer?.next
            tempNode?.next?.prev = pointer?.prev
            size -= 1
            totalRunningTime -= pointer!.time
        }
    }
    //MARK: - 링크드 리스트 출력 함수
    func printList() {
        print("|---", separator: "", terminator: "")
        var pointer = head
        
        while pointer != tail {
            pointer?.printNode()
            pointer = pointer?.next
        }
        pointer?.printNode()
        
        print("[end]")
    }
}
