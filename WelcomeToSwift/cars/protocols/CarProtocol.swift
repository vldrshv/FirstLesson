//
//  CarProtocol.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation

protocol CarProtocol {
    var type: String { get }
    var model: CarModel { get }
    var creationYear: String { get }
    var isGearOn: Bool { get set }
    var areWindowOpened: Bool { get set }
    
    func interact(action: VehicleAction, withValue: Double)
}


/// helped functions
extension CarProtocol {
    mutating func switchGearOn() {
        interact(action: .gearOn, withValue: 0.0)
    }
    
    mutating func switchGearOff() {
        interact(action: .gearOff, withValue: 0.0)
    }
    
    mutating func openWindows() {
        interact(action: .openWindow, withValue: 0.0)
    }
    
    mutating func closeWindows() {
        interact(action: .closeWindow, withValue: 0.0)
    }
}
