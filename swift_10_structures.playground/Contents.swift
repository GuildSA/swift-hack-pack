
import UIKit

// Structures allow us to group variables and functions together as a new type
// that can be used in the same way as the built-in types that Swift provides
// for us.

// For example, if we're making a game that has a lot of enemies for our
// players to fight, it would make sense to create a new type to represent
// these enemies.

struct Enemy {
    
    var weapon: String
    var attackDamage: Int
    var healthPoints: Int
}

// All structures have an automatically-generated memberwise initializer,
// which we can use to initialize the member properties of new structure
// instances. Initial values for the properties of the new instance can
// be passed to the memberwise initializer by name:

var enemy1 = Enemy(weapon: "Club", attackDamage: 10, healthPoints: 100)
var enemy2 = Enemy(weapon: "Sword", attackDamage: 15, healthPoints: 75)

// We can also access our new type's member variables and change them if we wish.
enemy1.weapon = "Ax"
enemy1.attackDamage = 15

//------------------------------------------------------------------------------

// Initializers

// If we don't like the automatically-generated Memberwise Initializer, we can
// define our own Initializers by adding one or more version of the init method.
// But, once you define an init Initializer, you can no longer use the
// Memberwise Initializer

struct Color {
    
    let red, green, blue: Float
    
    init(red: Float, green: Float, blue: Float) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    
    init(white: Float) {
        red   = white
        green = white
        blue  = white
    }
}

// Both initializers can be used to create a new Color instance, by providing
// named values for each initializer parameter:

// Create a new Color instance by setting all three color properties at once.
let purple = Color(red: 1.0, green: 0.0, blue: 1.0)

// Create a new Color instance that is gray-scaled by setting only a white value.
let gray = Color(white: 0.5)

//------------------------------------------------------------------------------

// Methods

// Methods are functions that are associated with a particular structure or
// class. These methods are typically designed to modify the variables held by
// the structure or class that defines them.

struct Player {
    
    var weapon: String = "Club"
    var armor: String = "Leather"
    var attackDamage: Int = 5
    var healthPoints: Int = 100
    
    init() {
        print("New Player Initialized! Using default values.")
    }
    
    init(weapon: String, armor: String, attackDamage: Int, healthPoints: Int) {
        
        self.weapon = weapon
        self.armor = armor
        self.attackDamage = attackDamage
        self.healthPoints = healthPoints
        
        print("New Player Initialized! Using passed values.")
    }
    
    func attack() {
        print("Player attacks with \(weapon) for \(attackDamage) points of damage!")
    }
    
    mutating func applyDamage(damage:Int) {
        
        healthPoints -= damage
        
        print("Player's health points reduced to \(healthPoints)")
    }
}

var player1 = Player()

player1.attack()
player1.applyDamage(15)

var player2 = Player(weapon: "Sword", armor: "Plate", attackDamage: 25, healthPoints: 100)

player2.attack()
player2.applyDamage(5)



