//
//  Queue.swift
//  WelcomeToSwift
//
//  Created by vlad on 07.01.2021.
//

import Foundation


class Queue<T> : QueueProtocol, CustomStringConvertible {
    internal var queue: [T] = []
    var description: String {
        Print.toString(reflectingObj: self)
    }
    
    /// return first element without deleting it from queue
    func peek() -> T? {
        return (queue.count == 0) ? nil : queue.first
    }
    
    /// Addind element to queue
    /// - Parameter toAdd: the element to put in queue
    func offer(_ toAdd: T) {
        queue.append(toAdd)
    }
    
    /// return first element with deleting it from queue
    func poll() -> T? {
        let res = peek()
        if res != nil {
            removeFirst()
        }
        
        return res
    }
    
    func printQueue() {
        print(queue)
    }
    
    subscript(index: Int) -> T? {
        return (index >= 0 && index < queue.count) ? queue[index] : nil
    }
    
    internal func removeFirst() {
        queue.remove(at: 0)
    }
}
