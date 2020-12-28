//
//  Car.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation

class Car: CustomStringConvertible {
    var description: String {
        Print.toString(reflectingObj: self)
    }
    
    
    internal var model: CarModel
    internal var creationYear: String
    internal var volume: Double = 0.0
    internal var filledVolume: Double = 0.0 {
        didSet {
            if filledVolume > volume {
                print(":can't load \(filledVolume - volume) units")
                filledVolume = volume
                return
            }
            if filledVolume < 0 {
                print(":can't upload \(-filledVolume) units")
                filledVolume = 0.0
                return
            }
        }
    }
    internal var isGearOn: Bool = false
    internal var areWindowOpened: Bool = false
    
    internal init(_ model: CarModel,_ creationYear: String,_ volume: Double) {
        self.model = model
        self.creationYear = creationYear
        self.volume = volume
    }
    
    
    func interact(action: VehicleAction, withValue: Double = 0) {
        //  override
    }
    
    internal func notAvailableAction(_ action: VehicleAction) {
        print("Not available to do \(action)")
    }
}
