//
//  Car.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation

// abstract class of Car
class Car: CustomStringConvertible, CarProtocol, CarErrorProtocol {
    var description: String {
        Print.toString(reflectingObj: self)
    }
    
    internal var model: CarModel
    internal var creationYear: String
    internal var isGearOn: Bool = false
    internal var areWindowOpened: Bool = false
    internal var type: String
    
    internal init(_ carType: String, _ model: CarModel,_ creationYear: String) {
        self.type = carType
        self.model = model
        self.creationYear = creationYear
    }
    
    func interact(action: VehicleAction, withValue: Double) {
        print("-- interact \(action) withValue = \(withValue)")
    }
}
