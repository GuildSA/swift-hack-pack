
import UIKit

//------------------------------------------------------------------------------

// Extensions add new functionality to an existing class, structure, enumeration,
// or protocol type. This includes the ability to extend types for which you do
// not have access to the original source code (known as retroactive modeling).

// Extensions in Swift can:

// Add computed properties and computed type properties
// Define instance methods and type methods
// Provide new initializers
// Define subscripts
// Define and use new nested types
// Make an existing type conform to a protocol

// This extension allows any Int value to return its square.

extension Int {
    
    var squared: Int {
        return(self * self)
    }
    
}

var myNumber = 3
myNumber.squared

3.squared

//------------------------------------------------------------------------------

var hello: String = "Hello, world!"

print(hello.containsString("world"))

// This extension allows any String value to return whether or not it is a
// holding a value that might be a Gmail email address.

extension String {
    
    var isGmailAccount: Bool {
        return self.containsString("@gmail.com")
    }
    
}

var someEmailAddress: String = "jennifer@yahoo.com"

print(someEmailAddress.isGmailAccount)

var anotherEmailAddress: String = "rob@gmail.com"

print(anotherEmailAddress.isGmailAccount)

//------------------------------------------------------------------------------

// Protocols

// A protocol defines a blueprint of methods, properties, and other requirements
// that suit a particular task or piece of functionality. The protocol can then
// be adopted by a class, structure, or enumeration to provide an actual
// implementation of those requirements. Any type that satisfies the requirements
// of a protocol is said to conform to that protocol.

// The Weapon protocol declares a Int var and two methods that must be implemented.

protocol Weapon {
    
    var attackDamage: Int { get }
    
    func attack()
    func description()
}

// Any class that conforms to this protocol must implement these methods 
// and properties. Below are two classes that conform to our Weapon protocol:

class ShortSword : Weapon {
    
    var attackDamage: Int = 10
    
    func attack() {
        print("The Short Sword slices!")
    }
    
    func description() {
        print("A good beginner's Sword.")
    }
}

class BattleAx : Weapon {
    
    var attackDamage: Int = 20
    
    func attack() {
        print("The Battle Ax chops!")
    }
    
    func description() {
        print("An upgrade over the basic Ax, but you need great strength to wield it!")
    }
}

//------------------------------------------------------------------------------

// If you define the var property with { get } only, then the class, enumeration,
// or structure that uses the protocol can define how it wants to implement
// the property - as either a constant or a variable (i.e var or let keyword).

// If you define the var property with { get set }, then this can only be implemented
// as a variable (i.e var keyword). If you attempt to use the let keyword when
// you create a class, structure, or enumeration with the protocol, Xcode will
// report an error.

protocol Enchantment {
    
    var magicPoints: Int { get set }
    
    func renderFx()
}

// Here's an example of a new class that is based on two different protocols.
// This means it must implement everything required by both the Weapon and
// Enchantment protocols.

class MagicSword : Weapon, Enchantment {
    
    let attackDamage: Int = 20
    var magicPoints: Int = 500
    
    func attack() {
        print("The Magic Sword slashes with Awesomeness!")
    }
    
    func description() {
        print("An upgrade over the Sword, but you need magic to wield it!")
    }
    
    func renderFx() {
        // Render some amazing special FXs here!
        print("Imagine some incredible special effects here!")
    }
}

//------------------------------------------------------------------------------


