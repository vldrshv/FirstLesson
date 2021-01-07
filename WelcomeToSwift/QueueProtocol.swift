//
//  QueueProtocol.swift
//  WelcomeToSwift
//
//  Created by vlad on 07.01.2021.
//

import Foundation

protocol QueueProtocol {
    associatedtype T
    
    /// return first element without deleting it from queue
    func peek() -> T?
    
    /// Addind element to queue
    /// - Parameter toAdd: the element to put in queue
    func offer(_ toAdd: T)
    
    /// return first element with deleting it from queue
    func poll() -> T?
}
