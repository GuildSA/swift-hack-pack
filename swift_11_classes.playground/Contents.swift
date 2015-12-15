
import UIKit

// Classes

// Just like Structures, Classes allow us to group variables and functions
// together as a new type. Matter of fact, Structures and Classes have so much
// in common we can simply change the "struct" keyword on our Enemy structure
// into "class", and we now have an Enemy class.

class Enemy {
    
    var weapon: String = "Sword"
    var attackDamage: Int = 15
    var healthPoints: Int = 100
    
    init() {
        print("New Enemy Initialized!")
    }
    
    func attack() {
        print("Enemy attacks with \(weapon) for \(attackDamage) points of damage!")
    }
    
    func applyDamage(damage:Int) {
        
        healthPoints -= damage
        
        print("HealthPoints reduced to \(healthPoints)")
    }
}

var enemy1 = Enemy()

enemy1.attack()
enemy1.applyDamage(5)

//------------------------------------------------------------------------------

// Since Structures and Classes are so similar, lets list the additional 
// capabilities and benefits gained by using class over struct:

// 1. Inheritance enables one class to inherit the characteristics of another.

// 2. Type casting enables you to check and interpret the type of a class
//    instance at runtime.

// 3. Deinitializers enable an instance of a class to free up any resources
//    it has assigned.

// 4. Reference counting allows more than one reference to a class instance.

// 5. Structs are value types and classes are reference types.

//------------------------------------------------------------------------------

// Value Types and Reference Types

// Basically, Value Types are copied whenever they’re assigned or used as a
// function argument. Numbers, strings, arrays, dictionaries, enums, tuples,
// and structs are Value Types.

// For Example:

func modifyString(var someText: String) {
    
    // We can modify someText but it's only a copy of the text var that was
    // passed in.
    someText += ", world!"
}

var text = "Hello"

modifyString(text)

print(text)

// Reference Types, such as classes and functions, can have multiple owners.
// When assigning a reference to a new variable or passing it to a function,
// those locations all point to the same instance.

// For Example:

class TestClass {
    
    var someText: String
    
    init(someText: String) {
        self.someText = someText
    }
}

func modifyInstance(myInstance: TestClass) {
    
    // We can modify the someText var of a TestClass instance and it will 
    // persist because instances of a class are Reference Types which are not
    // copied.
    myInstance.someText += ", world!"
}

var myClass = TestClass(someText: "Hello")

modifyInstance(myClass)

print(myClass.someText)

//------------------------------------------------------------------------------








