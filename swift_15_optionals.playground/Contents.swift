
import UIKit

//------------------------------------------------------------------------------

// Optionals with ?


// Suppose we were using someone's class and it had two property variables defined
// like this:

var age: Int? = nil
var height: Int? = 180

// By adding a '?' immediately after the data type the designer of this class is
// telling the compiler that the variable might contain a number or not.
// In other words, it might be 42 or it might be nil. There's no guarantee!

// Now, the usage of '?' causes Swift to basically rewrite our code. For example,
// if we declared a var called "weight" and made it optional by adding the '?'
// symbol after the type identifier, Swift would rewrite it like so:

// var weight: Int? = 200

var weight: Optional<Int> = Optional<Int>(200)

// This means, that the '?' symbol we added is what we call "syntatic sugar"
// since it hides a more complicated version of the code that wraps the type
// in a Generic called Optional.

//------------------------------------------------------------------------------

// Unwrapping with ? and when !


// Since Swift wraps our property variables with the Generic called Optional,
// we will need to un-wrap them later when we want to use them.
// This un-wrapping operation is done using either the '?' or '!' symbols.

class Weapon {
    
    var name: String = "Sword"
}

class Player {
    
    var health:Int = 100 // The Player always has some health value.
    
    var weapon: Weapon? = nil // But, the player might not have a Weapon!
}


var player1 = Player()    // Create our Player.
player1.weapon = Weapon() // Give him  or her a Weapon.


// Accessing the player's health points works as expected.
print("The player's health is \(player1.health) points.")


// But, our attempted access of the weapon's name results in a blatant
// error! We will be unable to compile and run the code until we fix it.
// This is because weapon is an optional property that might be nil and
// since it might be nil, we need to tell Swift how to handle it when
// un-wrapping it for access.

//print("The player's weapon current weapon is \(player1.weapon.name).")


// We can fix this error by using the '!' symbol. When we put a '!' behind
// the property name we're telling the compiler, "I don’t care that this
// property is optional - go head and un-wrap it for access". But, we should
// only use '!' if we're totally sure that this is safe.

//print("The player's weapon current weapon is \(player1.weapon!.name).")


// If we're not sure if the player will have a weapon or not, but we want
// try to access it without triggering a crash, we can use '?' instead
// of a '!'. The '?' behind the property name tells the compiler, "I don’t
// know whether this property contains nil or a value, so: if it has value
// use it, otherwise just consider the whole expression nil". Effectively
// the ? allows you to use that property but only in the case where it
// is not nil.

print("The player's current weapon is \(player1.weapon?.name).")

//------------------------------------------------------------------------------

// Unwrapping Optionals with the "if let" expression


// Ok, so we can use '!' or '?' to unwrap a property for access, but this only
// works for one access on one line of code. What if we wanted to safely access
// an optional like weapon several times? In this case, we can use an "if let"
// expression. The "if let" conditional expression allows us to check if an
// Optional holds a value, and if it does - the Optional is unwrapped and
// assigned to a constant which allows us to access it repeatably.

if let weapon = player1.weapon {
    print("The player's weapon current weapon is \(weapon.name).")
} else {
    print("The player is unarmed!")
}

