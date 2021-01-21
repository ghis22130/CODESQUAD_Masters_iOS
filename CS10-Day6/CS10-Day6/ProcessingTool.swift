//
//  ProcessingTool.swift
//  CS10-Day6
//
//  Created by 지북 on 2021/01/21.
//

import Foundation

func makeProcesses(number : Int) -> [Process] {
    var processes : [Process] = []
    
    for i in 0..<number {
        processes.append(Process(processName: String(UnicodeScalar(65+i)!), totalProceed: Int.random(in: 1...15)))
    }
    return processes
}

func updateRunningProcess(process : Process) {
    process.state = .Running
    process.proceed += 1
}

func switchingProcess(process : Process, queue: [Process]) -> [Process] {
    var processQueue = queue
    if isCompleteProcess(process) { process.state = .Terminated }
    else {
        process.state = .Ready
        processQueue.append(process)
    }
    return processQueue
}
func isEmptyQueue(_ queue : [Process]) -> Bool {
    return queue.isEmpty
}

func isCompleteProcess(_ process : Process) -> Bool {
    return process.proceed == process.total
}

func printStatement(_ processes:[Process]) {
    processes.forEach { process in
        print("\(process.name)(\(process.state)), \(process.proceed) / \(process.total)sec")
    }
}
