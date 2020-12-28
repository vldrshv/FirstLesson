//
//  TrunkCar.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation


class TrunkCar : Car {
    
    private var volume: Double = 0.0
    private var filledVolume: Double = 0.0 {
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
    private var hasExtraVolume: Bool = false
    private var extraVolume: Double = 0.0
    
    init(model: CarModel, creationYear: String, volume: Double, extraVolume: Double?) {
        super.init("Trunk Car", model, creationYear)
        self.volume = volume
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
        super.interact(action: action, withValue: withValue)
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
        
        print("\(self.type):\n\(self)\n\n")
    }
    
}
