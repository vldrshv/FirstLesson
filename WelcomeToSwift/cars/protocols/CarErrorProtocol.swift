//
//  CarErrorProtocol.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation

protocol CarErrorProtocol {
//    func notAvailableAction(_ action: VehicleAction)
}

extension CarErrorProtocol {
    internal func notAvailableAction(_ action: VehicleAction) {
        print("Not available to do \(action)")
    }
}
