
//------------------------------------------------------------------------------

// Now that we've covered all the basics of working with variables and
// functions we can start to understand the more advanced concepts of Swift such
// as its support for Object Oriented Programming or OOP.

// As the name implies, Object Oriented Programming is all about building our
// programs out of Objects and to create these Object we will use a Swift keyword
// called "class".

// A class allows us to group variables and functions together as a new type.
// Basically, it can be thought of as a blueprint that tells Swift how to create
// or build the objects that we need for our program.

// The three main features of Object Oriented Programming are:

// 1 - Encapsulation
// 2 - Inheritance
// 3 - Polymorphism

//------------------------------------------------------------------------------

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
    
    init(weapon: String, damage: Int, health: Int) {
        print("New Enemy Initialized with custom values!")
        self.weapon = weapon
        self.attackDamage = damage
        self.healthPoints = health
    }
    
    deinit {
        // If required, perform deinitialization here!
        print("Enemy Deinitialized!")
    }
    
    func attack() {
        print("Enemy attacks with \(weapon) for \(attackDamage) points of damage!")
    }
    
    func applyDamage(damage:Int) {
        healthPoints -= damage
        print("HealthPoints reduced to \(healthPoints)")
    }
}

var enemy = Enemy()

print(enemy.weapon)
print(enemy.attackDamage)
print(enemy.healthPoints)

enemy.attack()
enemy.applyDamage(damage: 10)


var bossEnemy = Enemy(weapon: "Magic Sword", damage: 35, health: 200)

print(bossEnemy.weapon)
print(bossEnemy.attackDamage)
print(bossEnemy.healthPoints)

bossEnemy.attack()
bossEnemy.applyDamage(damage: 10)

//------------------------------------------------------------------------------

// Since Structures and Classes are so similar, lets list the additional
// capabilities and benefits gained by using class over struct:

// 1. Classes support inheritance which allows one class to inherit the 
//    characteristics of another.

// 2. Classes support Deinitializers which allow an instance of a class
//    to free up any resources it has assigned.

// 3. Objects created from Classes are passed into functions as references 
//    which and can be changed in an intuitive way, while objects created from
//    Structures are always passed as copies that can not be changed.


