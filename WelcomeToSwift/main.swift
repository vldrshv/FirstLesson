//
//  main.swift
//  WelcomeToSwift
//
//  Created by Leonid Nifantyev on 11.12.2020.
//

import Foundation


//let queue = Queue<Int>()
//queue.offer(10)
//queue.offer(11)
//queue.offer(12)
//queue.offer(13)
//queue.offer(14)
//
//print(queue)

let dequeue = Dequeue<Int>()
dequeue.addFirst(1)
dequeue.addFirst(2)
dequeue.addFirst(3)
dequeue.addFirst(4)
dequeue.addFirst(5)
print(dequeue)
let last = dequeue.getLast()
print(last)
print(dequeue)
let lastPoll = dequeue.pollLast()
print(lastPoll)
print(dequeue)
let firstPoll = dequeue.pollFirst()
print(firstPoll)
print(dequeue)

let oddQueue = dequeue.filter { $0 % 2 != 0}
print(oddQueue)
let polled = oddQueue.poll()
print(polled)
let polled2 = oddQueue.poll()
print(polled2) // nil
