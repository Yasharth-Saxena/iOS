import Foundation


// 1) What is the error protocol? Create a custom error type that conforms to the error protocol.

// Ans) In Swift, errors are basically values of types conforming to the error protocol, it's an empty protocol that tells us that this type can handle errors.

// Implementation:

enum APIError: Error {
    case internetNotWorking
    case airplaneMode
}

// 2) Write a failable initialiser for a class which throws an error  “Object not able to initialise” description, and an  initialisationFailed case, Catch the error and print its error description.

enum InitializationError: Error {
    case initializationFailed(String)
}

class Employee {

    let firstName: String
    let lastName: String

    init?(fName: String, lName: String) throws {
        if fName.isEmpty || lName.isEmpty { throw InitializationError.initializationFailed("Object cannot be initialized, first name is empty")}
        self.firstName = fName
        self.lastName = lName
    }
}

do {
    // this initialisation fails as the firstName is an emptyString
    let _ = try Employee(fName: "", lName: "Doe")
} catch {
    print(error)
}


// 3) Explain the difference try, try?, try! with an example.

enum RocketError: Error {
    case insufficientFuel
    case insufficientAstronauts(needed: Int)
}


func igniteRockets(fuel: Int, astronauts: Int) throws {
    guard fuel > 2000 else {
        throw RocketError.insufficientFuel
    }

    guard astronauts >= 2 else {
        throw RocketError.insufficientAstronauts(needed: 3)
    }

    print("Rocket ingnited successfully")
}

do {
    // we can completely disable error handling by using try!
    // try! should only be used when we know for sure that a certain expression won't throw an error, it's like force unwrapping an optional and crashing because of nil
    try! igniteRockets(fuel: 2500, astronauts: 1)
}

do {
    // try? makes the value of an expression nil if an error is thrown like in the case below
    try? igniteRockets(fuel: 500, astronauts: 3)
}


// 4) Write a program which loads the data from a datasource of 10 employees looks like below, Program would help to give salary bonus to employees. Which is based on some conditions but if employee is not able to satisfy the condition program should throw the error with specific error condition and its description should be printed.

struct EmployeeData {
    let empId: Int
    let empName: String
    let empEmail: String
    let isOneYearCompleted: Bool
    let isPresent: Bool
    let competency: String
    let attendancePercentage: Int
}

enum BonusProgramError: Error, LocalizedError {
    case lowAttendance
    case notEnoughExperience
    case absentToday
    case invalidCompetency
    
    var errorDescription: String? {
        switch self {
        case .lowAttendance:
            return NSLocalizedString("is absent today", comment: "Low Attendance")
        case .notEnoughExperience:
            return NSLocalizedString("The employee hasn't completed a year in the company", comment: "Not completed one year")
        case .absentToday:
            return NSLocalizedString("The employee is absent today", comment: "Absent Today")
        case .invalidCompetency:
            return NSLocalizedString("The employee's competency doesn't fall under the bonus program", comment: "Invalid Competency")
        }
    }
}


let muskaan = EmployeeData(empId: 1, empName: "Muskaan", empEmail: "muskaan@tothenew.com", isOneYearCompleted: true, isPresent: true, competency: "FEEN", attendancePercentage: 96)
let mithlesh = EmployeeData(empId: 2, empName: "Mithlesh", empEmail: "mithlesh@tothenew.com", isOneYearCompleted: false, isPresent: false, competency: "FEEN", attendancePercentage: 95)
let ankit = EmployeeData(empId: 3, empName: "Ankit", empEmail: "ankit@tothenew.com", isOneYearCompleted: true, isPresent: true, competency: "MEAN", attendancePercentage: 92)
let sachin = EmployeeData(empId: 4, empName: "Sachin", empEmail: "sachin@tothenew.com", isOneYearCompleted: true, isPresent: false, competency: "iOS", attendancePercentage: 82)
let divya = EmployeeData(empId: 5, empName: "Divya", empEmail: "divya@tothenew.com", isOneYearCompleted: true, isPresent: true, competency: "Android", attendancePercentage: 86)
let priya = EmployeeData(empId: 6, empName: "Priya", empEmail: "priya@tothenew.com", isOneYearCompleted: false, isPresent: false, competency: "iOS", attendancePercentage: 85)

struct BonusProgram {
    func allowedForBonus(employee: EmployeeData) throws {
        guard employee.attendancePercentage > 80 else { throw BonusProgramError.lowAttendance }
        
        guard employee.isOneYearCompleted == true else { throw BonusProgramError.notEnoughExperience }
        
        guard employee.competency == "iOS" || employee.competency == "Android" || employee.competency == "BigData" else {
            throw BonusProgramError.invalidCompetency
        }
        
        guard employee.isPresent == true else { throw BonusProgramError.absentToday }
    }
}

let bonusProgram = BonusProgram()

do {
    try bonusProgram.allowedForBonus(employee: muskaan)
} catch {
    print(error.localizedDescription)
}



