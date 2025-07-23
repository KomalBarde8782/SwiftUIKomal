//
//  Bird.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 22/07/25.
//

//Subclasses should be substitutable for their base classes.
//parent Class or its child Class can be used in the same way without any errors.
import Foundation

//Bad
class Bird {
    func fly() {
        print("Flying")
    }
}

class Ostrich: Bird {
    override func fly() {
        fatalError("Ostrich can't fly")
    }
}


//Good
protocol Bird {
    func move()
}

class Sparrow: Bird {
    func move() {
        print("Flying")
    }
}

class Ostrich: Bird {
    func move() {
        print("Running")
    }
}
