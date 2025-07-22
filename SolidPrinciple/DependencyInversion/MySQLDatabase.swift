//
//  MySQLDatabase.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 22/07/25.
//

//High-level modules should not depend on low-level modules. Both should depend on abstractions.

//Bad
class MySQLDatabase {
    func saveData() {}
}

class DataManager {
    let db = MySQLDatabase()
    
    func save() {
        db.saveData()
    }
}

//good
protocol Database {
    func saveData()
}

class MySQLDatabase: Database {
    func saveData() {
        print("Saved in MySQL")
    }
}

class DataManager {
    var database: Database
    
    init(database: Database) {
        self.database = database
    }
    
    func save() {
        database.saveData()
    }
}
