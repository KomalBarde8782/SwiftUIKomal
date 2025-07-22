//
//  Worker.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 22/07/25.
//
//Interface Segregation Principle (ISP)
//Clients should not be forced to depend on interfaces they do not use.

//bad
protocol Worker {
    func work()
    func eat()
}

class Robot: Worker {
    func work() {}
    func eat() {} // Robots don't eat
}

//good
protocol Workable {
    func work()
}

protocol Eatable {
    func eat()
}

class Human: Workable, Eatable {
    func work() {}
    func eat() {}
}

class Robot: Workable {
    func work() {}
}
