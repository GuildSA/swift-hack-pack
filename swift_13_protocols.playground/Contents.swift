
//------------------------------------------------------------------------------

// Protocols

// A protocol defines a blueprint of methods, properties, and other requirements
// that suit a particular task or piece of functionality. The protocol can then
// be adopted by a class, structure, or enumeration to provide an actual
// implementation of those requirements. Any type that satisfies the requirements
// of a protocol is said to conform to that protocol.

//  -- Property Requirements for Protocols --

// If you define a var property with { get } only, then the class, enumeration,
// or structure that uses the protocol can define how it wants to implement
// the property - as either a constant or a variable (i.e var or let keyword).

// If you define the var property with { get set }, then this can only be
// implemented as a variable (i.e var keyword). If you attempt to use the let
// keyword when you create a class, structure, or enumeration with the protocol,
// Xcode will report an error.


// Below is a protocol called Weapon that declares an Int var, a String var and
// a method that must be implemented.

protocol Weapon {
    
    // The use of { get } means the class that implements this variable can
    // choose to make it either a var or a let constant.
    var description: String { get }
    
    // The use of { get set } means the class that implements this variable can
    // only make it a var.
    var attackDamage: Int { get set }
    
    func attack()
}

// Any class that conforms to the Weapon protocol must implement the methods
// and properties required of Weapon. Below are two classes that conform to
// our Weapon protocol:

class ShortSword : Weapon {
    
    let description: String = "A good beginner's Sword."
    var attackDamage: Int = 10
    
    func attack() {
        print("The Short Sword slices!")
    }
}

class BattleAx : Weapon {
    
    let description: String = "An upgrade over the basic Ax, but you need great strength to wield it!"
    var attackDamage: Int = 20
    
    func attack() {
        print("The Battle Ax chops!")
    }
}

var myShortSword = ShortSword()

myShortSword.attack()
print(myShortSword.attackDamage)
print(myShortSword.description)

var myBattleAx = BattleAx()

myBattleAx.attack()
print(myBattleAx.attackDamage)
print(myBattleAx.description)

//------------------------------------------------------------------------------

protocol Enchantment {
    
    // The use of { get set } means the class that implements this variable can
    // choose only var or a let constant.
    var magicPoints: Int { get set }
    
    func renderFx()
}

// Here's an example of a new class that is based on two different protocols.
// This means it must implement everything required by both the Weapon and
// Enchantment protocols.

class MagicSword : Weapon, Enchantment {
    
    let description: String = "An upgrade over the Sword, but you need magic to wield it!"
    var attackDamage: Int = 20
    var magicPoints: Int = 500
    
    func attack() {
        print("The Magic Sword slashes with Awesomeness!")
    }
    
    func renderFx() {
        print("Imagine some incredible special effects here!")
    }
}

var myMagicSword = MagicSword()

myMagicSword.attack()
myMagicSword.renderFx()
print(myMagicSword.attackDamage)
print(myMagicSword.description)
print(myMagicSword.magicPoints)

