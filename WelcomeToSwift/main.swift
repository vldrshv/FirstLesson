//
//  main.swift
//  WelcomeToSwift
//
//  Created by Leonid Nifantyev on 11.12.2020.
//

import Foundation


var mazda = SportCar(model: .mazda, creationYear: "2009", horsePower: 600.0)
var toyota = TrunkCar(model: .toyota, creationYear: "2020", volume: 20.0, extraVolume: 10.0)

mazda.interact(action: .openWindow)
mazda.interact(action: .gearOn)
mazda.interact(action: .gearOff)
mazda.interact(action: .popVolume, withValue: 14)
mazda.interact(action: .pushVolume, withValue: 10)
mazda.interact(action: .increaseCapacity, withValue: 10)


toyota.interact(action: .pushVolume, withValue: 10)
toyota.interact(action: .pushVolume, withValue: 10)
toyota.interact(action: .increaseCapacity)
toyota.interact(action: .pushVolume, withValue: 10)
toyota.interact(action: .popVolume, withValue: 14)
toyota.interact(action: .decreaseCapacity)
