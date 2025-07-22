//
//  Report.swift
//  SwiftDemoNew
//
//  Created by Komal Markande on 22/07/25.
//

//A class should have only one reason to change.



//Bad Approach
class Report {
    func generateReport() {
        // generate report
    }
    
    func saveToFile() {
        // save report to file
    }
}


//Good Approach
class ReportGenerator {
    func generateReport() {
        // logic to generate report
    }
}

class ReportSaver {
    func save(report: String) {
        // logic to save report
    }
}
