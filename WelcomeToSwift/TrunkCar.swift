//
//  TrunkCar.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation


class TrunkCar : Car {
    
    private var hasExtraVolume: Bool = false
    private var extraVolume: Double = 0.0
    
    init(model: CarModel, creationYear: String, volume: Double, extraVolume: Double?) {
        super.init(model, creationYear, volume)
        self.extraVolume = extraVolume ?? 0.0
        self.hasExtraVolume = extraVolume != nil
    }
    
    private func increaseCapacity() {
        if hasExtraVolume {
            self.volume = self.volume + self.extraVolume
        }
    }
    private func decreaseCapacity() {
        if hasExtraVolume {
            self.volume = self.volume - self.extraVolume
        }
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
        case .popVolume:
            filledVolume = filledVolume - withValue
        case .pushVolume:
            filledVolume = filledVolume + withValue
        case .increaseCapacity:
            increaseCapacity()
        case .decreaseCapacity:
            decreaseCapacity()
        }
        
        print("\(self)\n\n")
    }
    
}
