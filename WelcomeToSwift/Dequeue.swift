//
//  Dequeue.swift
//  WelcomeToSwift
//
//  Created by vlad on 07.01.2021.
//

import Foundation

class Dequeue<T : Comparable> : Queue<T>, DequeueProtocol {
    func addFirst(_ toAdd: T) {
        offer(toAdd)
    }
    
    func addLast(_ toAdd: T) {
        queue.append(toAdd)
    }
    
    func getFirst() -> T? {
        return peek()
    }
    

    func getLast() -> T? {
        return queue.count != 0 ? queue.last : nil
    }
    
    
    func pollFirst() -> T? {
        let res = getFirst()
        if res != nil {
            removeFirst()
        }
        
        return res
    }
    
    
    func pollLast() -> T? {
        let res = getLast()
        if res != nil {
            removeLast()
        }
        
        return res
    }
    
    
    func removeFirstOccurence(_ toRemove: T) -> Bool {
        for index in 0...queue.count {
            if removeEquals(index, toRemove) {
                return true
            }
        }
        
        return false
    }
    
    func removeLastOccurence(_ toRemove: T) -> Bool {
        for index in stride(from: queue.count - 1, through: 0, by: -1) {
            if removeEquals(index, toRemove) {
                return true
            }
        }
        
        return false
    }
    
    func map(_ predicate: (T) -> T) -> Dequeue<T> {
        let res = Dequeue<T>()
        for element in queue {
            res.addLast(predicate(element))
        }
        
        return res
    }
    
    func filter(_ predicate: (T) -> Bool) -> Dequeue<T> {
        let res = Dequeue<T>()
        for element in queue {
            if predicate(element) {
                res.addLast(element)
            }
        }
        
        return res
    }

    
    private func removeLast() {
        queue.removeLast()
    }
    
    private func removeEquals(_ index: Int, _ element: T) -> Bool {
        if queue[index] == element {
            queue.remove(at: index)
            return true
        }
        
        return false
    }
}
