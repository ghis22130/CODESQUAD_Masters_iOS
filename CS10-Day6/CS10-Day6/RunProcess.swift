//
//  RunProcess.swift
//  CS10-Day6
//
//  Created by 지북 on 2021/01/21.
//

import Foundation

func runProcesses() {
    let processes = makeProcesses(number: 5)
    var processQueue : [Process] = processes
    
    while !isEmptyQueue(processQueue) {
        sleep(1)
        Timer.sche
        let runningProcess = processQueue.removeFirst()
        updateRunningProcess(process: runningProcess)
        printStatement(processes)
        processQueue = switchingProcess(process: runningProcess, queue: processQueue)
        print(".")
    }
    printStatement(processes)
    print("\n모든 프로세스가 종료되었습니다.")
}
