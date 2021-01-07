//
//  DequeueProtocol.swift
//  WelcomeToSwift
//
//  Created by vlad on 07.01.2021.
//

import Foundation

protocol DequeueProtocol {
    associatedtype T
    
    /// add element to the beginning of queue
    /// - Parameter toAdd: element to add to the beginning of queue
    func addFirst(_ toAdd: T)
    
    /// add element to the end of queue
    /// - Parameter toAdd: element to add to the end of queue
    func addLast(_ toAdd: T)
    
    /// get element from the beginning of queue
    /// - Returns: first element of queue or nil if queue is empty
    func getFirst() -> T?
    
    /// get element from the end of queue
    /// - Returns: last element of queue or nil if queue is empty
    func getLast() -> T?
    
    /// get element from the beginning of queue with deleting it
    /// - Returns: first element of queue or nil if queue is empty
    func pollFirst() -> T?
    
    /// get element from the end of queue with deleting it
    /// - Returns: first element of queue or nil if queue is empty
    func pollLast() -> T?
    
    /// remove first element fully compared to element 'toRemove' from the beginning of queue
    /// - Parameter toRemove: element to remove from queue
    /// - Returns: true if deletion succeded, otherwise false
    func removeFirstOccurence(_ toRemove: T) -> Bool
    
    /// remove last element fully compared to element 'toRemove' from the beginning of queue
    /// - Parameter toRemove: element to remove from queue
    /// - Returns: true if deletion succeded, otherwise false
    func removeLastOccurence(_ toRemove: T) -> Bool
}
