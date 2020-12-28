//
//  SportCar.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation

class SportCar: Car {
    private var horsePower: Double = 0.0
    
    init(model: CarModel, creationYear: String, horsePower: Double) {
        super.init(model, creationYear, 0.0)
        self.horsePower = horsePower
    }
    
    override func interact(action: VehicleAction, withValue: Double = 0) {
        print("-- interact \(action) withValue = \(withValue)")
        
        switch action {
        case .openWindow:
            areWindowOpened = true
        case .closeWindow:
            areWindowOpened = false
        case .gearOn:
            isGearOn = true
        case .gearOff:
            isGearOn = false
        default:
            notAvailableAction(action)
        }
        print("SportCar: \(Print.toString(reflectingObj: self))\n\n")
    }
}
