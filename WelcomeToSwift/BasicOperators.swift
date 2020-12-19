//
//  BasicOperators.swift
//  WelcomeToSwift
//
//  Created by vlad on 19.12.2020.
//

import Foundation

class BasicOperators {
    
    func isEven(num: Int) -> Bool {
        return isDividedWithoutRemainderBy(number: num, divider: 2)
    }
    func isDividedWithoutRemainderBy(number: Int, divider: Int, withPrint: Bool = true) -> Bool {
        let res = number % divider == 0
        if withPrint {
            print("\(number) % \(divider) == 0 ? \(res)")
        }
        
        return res
    }
    func createGrowingArray(size: Int) -> [Int] {
        var res = [Int]()
        for i in 0...size {
            res.append(i)
        }
        
        print("create array = \(res)")
        return res
    }
    func removeDividedBy(arr: [Int], dividers: Int...) -> [Int] {
        if dividers.isEmpty {
            return arr
        }
        var res = [Int](arr)
        res.removeAll(where: { isDividedBy($0, dividers) } )
        
        print("delete elements divided by \(dividers) from \n\(arr):\n\(res)")
        
        return res
    }
    
    func createFibArray(size: Int) -> [Int] {
        var array = [Int]()
        if size == 0 {
            return array
        }
        
        array.append(0)
        if size == 1 {
            return array
        }
        
        array.append(1)
        for index in 2...size {
            array.append(
                createFibNumber(prev: array[index - 1], prevPrev: array[index - 2])
            )
        }
        
        print("fibonachi array = \(array)")
        
        return array
    }
    
    // check if element is divided by dividers without remainder
    private func isDividedBy(_ element: Int,_ dividers: [Int]) -> Bool {
        var toRemove = false
        for div in dividers {
            toRemove = toRemove || isDividedWithoutRemainderBy(number: element, divider: div, withPrint: false)
            if toRemove { return true }
        }
        
        return toRemove
    }
    
    private func createFibNumber(prev: Int, prevPrev: Int) -> Int {
        return prev + prevPrev
    }

}
