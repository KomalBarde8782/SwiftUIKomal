//
//  Discount.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 22/07/25.
//

//Software entities should be open for extension but closed for modification.


//Bad approach
class Discount {
    func calculateDiscount(type: String) -> Double {
        if type == "gold" {
            return 0.2
        } else if type == "silver" {
            return 0.1
        } else {
            return 0.0
        }
    }
}


//Good approach using protocol and polymorphism

protocol Discount {
    func calculate() -> Double
}

class GoldDiscount: Discount {
    func calculate() -> Double { 0.2 }
}

class SilverDiscount: Discount {
    func calculate() -> Double { 0.1 }
}

class NoDiscount: Discount {
    func calculate() -> Double { 0.0 }
}

func apply(discount: Discount) {
    print("Discount: \(discount.calculate())")
}

