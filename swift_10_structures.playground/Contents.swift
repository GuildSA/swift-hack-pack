
import UIKit

// Structures allow us to group variables and functions together as a new type
// that can be used in the same way as the built-in types that Swift provides
// for us.

// Here's an example of new type called Player which groups together a bunch
// of variables which each player in the game should have.
struct Player {
    
    var weapon: String
    var attackDamage: Int
    var healthPoints: Int
}

// All structures have an automatically-generated member-wise initializer,
// which we can use to initialize the member properties of new structure
// instances. Initial values for the properties of the new instance can
// be passed to the member-wise initializer by name:

var player1 = Player(weapon: "Club", attackDamage: 10, healthPoints: 100)
var player2 = Player(weapon: "Sword", attackDamage: 15, healthPoints: 75)

// We can also access our new type's member variables and change them if we wish.
player1.weapon = "Ax"
player1.attackDamage = 15

//------------------------------------------------------------------------------

// Initializers

// If we don't like the automatically-generated Member-wise Initializer, we can
// define our own Initializers by adding one or more version of the init method.
// But, once you define a custom Initializer, we can no longer use the
// automatically-generated Member-wise Initializer. If we want a custom init
// and a Member-wise Initializer, we will have to manually define both.

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

// For example, if we're making a game that has a lot of enemies for our
// players to fight, it would make sense to create a new type to represent
// these enemies which not only includes their data but methods that allow
// us to modify that data.

struct Enemy {
    
    var weapon: String = "Club"
    var attackDamage: Int = 5
    var healthPoints: Int = 100
    
    init() {
        print("New Enemy Initialized with default values!")
    }
    
    init(weapon: String, damage: Int, health: Int) {
        print("New Enemy Initialized with custom values!")
        self.weapon = weapon
        self.attackDamage = damage
        self.healthPoints = health
    }
    
    func attack() {
        print("Enemy attacks with \(weapon) for \(attackDamage) points of damage!")
    }
    
    mutating func applyDamage(damage:Int) {
        healthPoints -= damage
        print("HealthPoints reduced to \(healthPoints)")
    }
}

var enemy1 = Enemy()

enemy1.attack()
enemy1.applyDamage(damage: 15)

var enemy2 = Enemy(weapon: "Sword", damage: 25, health: 100)

enemy2.attack()
enemy2.applyDamage(damage: 5)



