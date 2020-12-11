//
//  main.swift
//  WelcomeToSwift
//
//  Created by Leonid Nifantyev on 11.12.2020.
//

import Foundation


let employList: [String] = [
    "Геннадий Новиков",
    "Давид С",
    "Давид С",
]

print(employList)

let employListSet: Set<String> = [
    "Геннадий Новиков",
    "Давид С",
    "Давид С"
]

print(employListSet)


let isSergeyInList = employList.contains("Давид С")

print(isSergeyInList)



var r: Double? = .none //server закончил работу с ошибкой



if let value = r {
    print(value)
} else {
    print("Server ничего не вернул")
}

let result = r ?? 0


switch r {
case .none: print("Server ничего не вернул")
case let .some(value): print(value)
}





