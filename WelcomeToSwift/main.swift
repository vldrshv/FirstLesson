//
//  main.swift
//  WelcomeToSwift
//
//  Created by Leonid Nifantyev on 11.12.2020.
//

import Foundation



struct TrunkCar {
    // все то же самое, что и в SportCar, только значения другие
}

struct SportCar {
    
    private var model: CarModel
    private var creationYear: String
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
    private var isGearOn: Bool = false
    private var areWindowOpened: Bool = false
    
    init(model: CarModel, creationYear: String, volume: Double) {
        self.model = model
        self.creationYear = creationYear
        self.volume = volume
    }
    
    mutating func interact(action: VehicleAction, withValue: Double = 0) {
        print("-- interact \(action) withValue = \(withValue)")
        
        switch action {
        case .open_window:
            areWindowOpened = true
        case .close_window:
            areWindowOpened = false
        case .gear_on:
            isGearOn = true
        case .gear_off:
            isGearOn = false
        case .pop_volume:
            filledVolume = filledVolume - withValue
        case .push_volume:
            filledVolume = filledVolume + withValue
        }
        
        print("\(self)\n\n")
    }
    
}

enum VehicleAction {
    case open_window
    case close_window
    
    case gear_on
    case gear_off
    
    case pop_volume
    case push_volume
}

enum CarModel: String {
    case toyota = "toyota"
    case mazda = "mazda"
}

var mazda = SportCar(model: .mazda, creationYear: "1979", volume: 12.0)
var toyota = SportCar(model: .toyota, creationYear: "2020", volume: 20.0)

mazda.interact(action: .open_window)
mazda.interact(action: .gear_on)
mazda.interact(action: .gear_off, withValue: 10)
mazda.interact(action: .push_volume, withValue: 14)
mazda.interact(action: .pop_volume, withValue: 10)
mazda.interact(action: .pop_volume, withValue: 10)
