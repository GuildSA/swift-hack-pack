
import UIKit

// Inheritance

// A class can inherit methods, properties, and other characteristics from
// another class. When one class inherits from another, the inheriting class
// is known as a subclass, and the class it inherits from is known as its
// superclass.

// Our Enemy class below defines simple enemies that our players can fight.
// We've already covered this class in the last lecture.

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

//------------------------------------------------------------------------------

// Now, for the next version of our game, we want to add a new type of enemy
// that uses magic. We could add new properties and methods to the Enemy class
// so all enemies can use magic, but that's a waste of memory since only the
// new Warlock enemies really need them.

// But if we create a new class called Warlock that inherits from Enemy, we can
// use everything in Enemy and add just the new variables and methods that are
// required to keep track of magic data.

class Warlock : Enemy {
    
    var spellDamage: Int = 10
    var magicPoints: Int = 500
    
    override init() {
        
        // This will call the init in Enemy so it sets all of its defaults
        // before we alter any of them.
        super.init()
        
        print("New Warlock Initialized with default values!")
        
        weapon = "Magic Staff"
        attackDamage = 25
    }
    
    override func attack() {
        print("Warlock attacks with \(weapon) for \(attackDamage) points of damage!")
        
        magicPoints -= 5
        print("MagicPoints reduced to \(magicPoints)")
    }
    
    func castSpell() {
        print("Warlock casts a spell for \(spellDamage) points of damage!")
        
        magicPoints -= 10
        print("MagicPoints reduced to \(magicPoints)")
    }
    
    func teleport() {
        print("Warlock teleports to new a position!")
    }
}

var enemy = Enemy()

print(enemy.weapon)
print(enemy.attackDamage)
print(enemy.healthPoints)

enemy.attack()
enemy.applyDamage(10)



var warlock = Warlock()

print(warlock.weapon)
print(warlock.attackDamage)
print(warlock.healthPoints)
print(warlock.magicPoints)

warlock.attack()
warlock.applyDamage(10)
warlock.castSpell()
warlock.teleport()

//------------------------------------------------------------------------------

// Keep in mind that we can not create a Warlock using the custom initializer
// defined by Enemy, so the line below will not compile! You will need to either
// override it or define a completely new initializer just for Warlocks.

//var bossWarlock = Warlock(defaultWeapon: "Staff of Lightning", attackDamage: 45, healthPoints: 250)

