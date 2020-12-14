//
//  main.swift
//  WelcomeToSwift
//
//  Created by Leonid Nifantyev on 11.12.2020.
//

import Foundation


func resolveSquareExpression(_ firstCoef: Double?,_ secondCoef: Double?,_ freeVariable: Double?) {
        
    let a = firstCoef ?? 0
    let b = secondCoef ?? 0
    let c = freeVariable ?? 0
    
    let discr = b * b - 4 * a * c
    
    if (discr == 0) {
        let x = (-b + sqrt(discr)) / (2 * a)
        print("result = \(x)")
    } else {
        let x1 = (-b + sqrt(discr)) / (2 * a)
        let x2 = (-b - sqrt(discr)) / (2 * a)
        
        print("result1 = \(x1)")
        print("result2 = \(x2)")
    }
}

// ======================= задание 2

func resolveTrianglePerimeter(_ a: Double,_ b: Double,_ c: Double) {
    let perimeter = a + b + c
    
    print("perimeter = \(perimeter)")
}
func resolveTriangleSquare(_ a: Double,_ b: Double) {
    let square = (a * b) / 2
    
    print("square = \(square)")
}
func resolveGepotenuza(_ a: Double,_ b: Double) {
    let gepotenuza = sqrt(a * a + b * b)
    
    print("gepotenuza = \(gepotenuza)")
}

// ======================= задание 3
/* можно, конечно, через циклы, но нашел формулу https://www.google.com/url?sa=i&url=https%3A%2F%2Fstrategy4you.ru%2Fvklad%2Fformula-rascheta-slozhnyx-procentov-po-vkladam.html&psig=AOvVaw16GyuBwso3kPEwSxtrk5IW&ust=1608047378128000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLjRtrnpze0CFQAAAAAdAAAAABAD
 */
func resolveBankSumm(_ firstAmount: Double,_ percents: Double) {
    let YEARS = 5.0
    let res = firstAmount * pow(1 + percents / 100, YEARS)
    
    print("bank cash amount after \(YEARS) years will be \(res)")
}


resolveSquareExpression(3, -14, -5)
resolveTriangleSquare(2, 2)
resolveTrianglePerimeter(2, 2, 2)
resolveGepotenuza(3, 4)
resolveBankSumm(100, 5)




zczczcvcvx



