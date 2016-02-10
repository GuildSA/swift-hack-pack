
import UIKit

// Classes

// Just like Structures, Classes allow us to group variables and functions
// together as a new type. Matter of fact, Structures and Classes have so much
// in common we can simply change the "struct" keyword on our Enemy structure
// into "class", and we now have an Enemy class.

class Enemy {
    
    var weapon: String = "Club"
    var attackDamage: Int = 5
    var healthPoints: Int = 100
    
    init() {
        print("New Enemy Initialized with default values!")
    }
    
    init(defaultWeapon weapon:String, attackDamage damage: Int, healthPoints health:Int) {
        print("New Enemy Initialized with custom values!")
        self.weapon = weapon
        self.attackDamage = damage
        self.healthPoints = health
    }
    
    func attack() {
        print("Enemy attacks with \(weapon) for \(attackDamage) points of damage!")
    }
    
    func applyDamage(damage:Int) {
        healthPoints -= damage
        print("HealthPoints reduced to \(healthPoints)")
    }
}

var typicalEnemy = Enemy()

print(typicalEnemy.weapon)
print(typicalEnemy.attackDamage)
print(typicalEnemy.healthPoints)

typicalEnemy.attack()
typicalEnemy.applyDamage(10)


var bossEnemy = Enemy(defaultWeapon: "Magic Sword", attackDamage: 35, healthPoints: 200)

print(bossEnemy.weapon)
print(bossEnemy.attackDamage)
print(bossEnemy.healthPoints)

bossEnemy.attack()
bossEnemy.applyDamage(10)

//------------------------------------------------------------------------------

// Since Structures and Classes are so similar, lets list the additional
// capabilities and benefits gained by using class over struct:

// 1. Inheritance enables one class to inherit the characteristics of another.

// 2. Type casting enables you to check and interpret the type of a class
//    instance at runtime.

// 3. Deinitializers enable an instance of a class to free up any resources
//    it has assigned.

// 4. Reference counting allows more than one reference to a class instance.
//    In other words, Structs are value types and classes are reference types.
//    This means Structures are always copied when they are passed around in
//    your code, and do not use reference counting.

//------------------------------------------------------------------------------

// Value Types and Reference Types

// Basically, Value Types are copied whenever they’re assigned or used as a
// function argument. Numbers, strings, arrays, dictionaries, enums, tuples,
// and structs are Value Types.

// For example, the function below can use the var keyword to modify the
// parameter "paramText" inside the function, but it's only a copy of the
// String variable "myText" that was passed in. Changes to "paramText" do not
// alter the original variable "myText" that was passed into the function.

func modifyString(var paramText: String) {
    
    paramText = "Hello, " + paramText + "!"
}

var myText = "world"

print(myText)

modifyString(myText)

print(myText)

//------------------------------------------------------------------------------

// Reference Types, such as classes and functions, can have multiple owners.
// When assigning a reference to a new variable or passing it to a function,
// those locations all point to the same instance.

// For example, if we create a class called "MyClass", we can pass an instance
// of it to a function and that function can change it some way that will 
// persist even after the function call has returned.

class MyClass {
    
    var someText: String
    
    init(paramText: String) {
        
        self.someText = paramText
    }
}

// We can modify the someText property variable of a MyClass instance and
// it will persist because instances of a class are Reference Types which are
// not copied when passed into the function.
func modifyInstance(myInstance: MyClass) {
    
    myInstance.someText = "Hello, " + myInstance.someText + "!"
}


var myInstance = MyClass(paramText: "world")

print(myInstance.someText)

modifyInstance(myInstance)

print(myInstance.someText)

//------------------------------------------------------------------------------

