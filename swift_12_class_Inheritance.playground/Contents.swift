
import UIKit

// Inheritance

// A class can inherit methods, properties, and other characteristics from
// another class. When one class inherits from another, the inheriting class
// is known as a subclass, and the class it inherits from is known as its
// superclass.

// Our Enemy class below defines simple enemies that our players can fight.
// We've already covered this class in the last lecture.

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

//------------------------------------------------------------------------------

// Now, for the next version of our game, we want to add a new type of enemy
// that uses magic. We could add new variables and methods to the Enemy class
// so all enemies can use magic, but that's a waste of memory since only the
// new warlock enemies really need it.

// But if we create a new class called Warlock that inherits from Enemy, we can
// use everything in Enemy and add just the new variables and methods that are
// required to keep track of magic data.

class Warlock : Enemy {
    
    var magicPoints:Int = 100
    
    override init() {
        
        super.init()
        
        print("New Warlock Initialized!")
        
        weapon = "Magic Staff"
    }
    
    override func attack() {
        
        print("Warlock attacks with \(weapon)")
        
        magicPoints -= 5
        
        print("MagicPoints reduced to \(magicPoints)")
    }
}

var enemy1 = Enemy()

enemy1.attack()
enemy1.applyDamage(5)

var warLock1 = Warlock()

warLock1.attack()
warLock1.applyDamage(10)

