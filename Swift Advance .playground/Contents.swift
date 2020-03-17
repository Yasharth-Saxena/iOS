import UIKit

// 1) What is an extension?

// Ans) An extension in Swift lets us extend the functionality of an enum, struct, class or even a protocol type. We extend an existing type when we don’t usually have access to the original source code. We can add computed properties, add methods, provide new initializers, subscripts and even more.

    // example of an extension:

extension Int {
    func sayHello() {
        print("Hello I'm \(self)")
    }
}

// making an instance of Int
var someInt = 5
5.sayHello() // prints Hello I'm 5









// 2) Create a class and write the delegate of UITextField in an extension of the class.

class SomeViewController: UIViewController {
    // some code
}

// UITextFieldDelegate protocol for optional functionality needed when working with editing and validation of the text
extension SomeViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        // some more code here, maybe an if statement for checking if the addressTextField is valid or not
        // if yes then we return true
        return true
    }
}









// 3) Write a protocol and create an extension of the protocol.

protocol FullName {
    var firstName: String { get }
    var lastName: String { get }
}

extension FullName {
    func helloWorld() -> String {
        return "Hello World"
    }
}









// 4) Write an enum and create an extension of the enum.

// Enums in swift can be extended by conforming to protocols

protocol MyNewProtocol {
    func sayHello() -> String
}


enum Competency: MyNewProtocol {
    
    // I added extra functionality to my enum by conforming to the protocol I created above
    func sayHello() -> String {
        return "Hello"
    }
    
    case iOS
    case android
    case feen
    case mean
    case qualEngg
}









// 5) What are Generics?

// Ans) Generic code lets us create reusable, flexible function types that can work with any type based on how we define them. It lets us write code without any duplication and with some specific intent as well.

// 6) Explain generic with an example.
    
// Taking the example of a function that swaps two integer values :-

func swapTwoNumbers(using a: inout Int, and b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

// Now if I would've needed a function to swap two strings then I'd have to write the whole function again for String parameters

func swapTwoStrings(using a: inout String, and b: inout String) {
    let tempA = a
    a = b
    b = tempA
}

// instead we could write a generic function that takes in a parameter type T, all it says is that a and b must be of the same type

func swapTwoValues<T>(using a: inout T, and b: inout T) {
    let tempA = a
    a = b
    b = tempA
    print("a is now \(a), b is now \(b)")
}


// now for the integer type paramters
var someNumber = 10
var anotherNumber = 20

swapTwoValues(using: &someNumber, and: &anotherNumber)
// prints "a is now 20, b is now 10


var someString = "Rat"
var someOtherString = "Cat"

swapTwoValues(using: &someString, and: &someOtherString)
// prints "a is now Cat, b is now Rat"









// 7) Explain the difference between map and compactMap with an example.

// Ans) Using 'map' we can convert a sequence of values into a new array of values, using a closure as a transform. CompactMap on the other hand lets us work with optional or nil values which isn't the case with the normal map.

// let's say we have an array of integers then using the map function I can convert it to a String array

let intArray = [1, 2, 3, 4, 5]
var convertedStringArray = intArray.map { String($0) }
print(convertedStringArray) // prints ["1", "2", "3", "4", "5"]

// If I now add another string to the converted string array and then convert them back to an integer I'll be returned optional integer values and a nil using the map function

convertedStringArray.append("SomethingRandom")
let anotherIntArray = convertedStringArray.map { Int($0) }
print(anotherIntArray)  // prints [Optional(1), Optional(2), ...., nil]

// so in this case compactMap unwraps the optional values keeping the ones which actually have a value and discarding the nil ones

let someOtherArray = convertedStringArray.compactMap { Int($0) }
print(someOtherArray) // prints [1, 2, 3, 4 ,5] - discards the nil values and unwraps the optionals









// 9) Write a function to filter the name of employees with age greater than 25

struct Person {
    var name: String
    var age: Int
}

let person1 = Person(name: "Sam", age: 23)
let person2 = Person(name: "John", age: 30)
let person3 = Person(name: "Rob", age: 27)
let person4 = Person(name: "Luke", age: 20)

let personArray = [person1, person2, person3, person4]

print(personArray.filter { $0.age > 25 })


