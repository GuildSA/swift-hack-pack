
import UIKit

// We can use if-statements to have our code take some action if some
// condition is true. The most basic control structure is the if-statement.

var health = 0

// If the player's health is less than or equal to 0 - print "You're dead!"
if health <= 0 {
    print( "You're dead!" )
}

//------------------------------------------------------------------------------

// Next, the if-else statement allows us to pick one of two possible actions instead
// of a all-or-nothing choice.

health = 75

// If the player's health is less than or equal to 0 - print "You're dead!"
// Otherwise, print "You're alive!".
if health <= 0 {
    print( "You're dead!" )
} else {
    print( "You're alive!" )
}

//------------------------------------------------------------------------------

// The final form of an if-statement, uses an else-if combination to pick from
// one of several possible actions by chaining two or more if statements
// together.

health = 24

// If the player's health is less than or equal to 0 - print "You're dead!"
// But if the player is not dead, and the player's health is less than 25 -
// print  "You're alive - but badly wounded!" Otherwise, print "You're alive!".
if health <= 0  {
    print( "You're dead!" )
} else if health < 25 {
    print( "You're alive - but badly wounded!" )
} else {
    print( "You're alive!" )
}

//------------------------------------------------------------------------------

// If we want to write if-statements that check multiple expressions we can
// use Logical Operators to decided if an if-statement should be executed
// or not.

// Swift Logical Operators

// Logical AND (a && b) - Returns true if both expressions are true
// Logical OR  (a || b) - Returns true if either of the two expressions are true
// Logical NOT (!a)     - Negates or inverts the expression's result.

let goldCoins = 800
let rubies = 5

let priceUsingGold = 500
let priceUsingRubies = 10

var hasSword = true // Does the shop keeper have one to sell?

// If the player has enough gold coins AND the shop keeper has a magic sword
// to sell - ask the player if he would like to purchase it.

if goldCoins >= priceUsingGold && hasSword == true {
    print("Would you like to purchase a magic sword?")
} else {
    print("I'm sorry. The magic sword is unavailable.")
}

// If the player has enough gold coins OR the player has enough ruby gems -
// ask the player if he would like to purchase it.

if goldCoins >= priceUsingGold || rubies >= priceUsingRubies {
    print("Would you like to purchase a magic sword?")
} else {
    print("I'm sorry. The magic sword is unavailable.")
}

// The 'not' Logical Operator just inverts or negates a Boolean variable or the
// result of an expression.

hasSword = false

if !hasSword {
    print("The shop keeper has no magic sword!")
}

//------------------------------------------------------------------------------

// A switch statement provides an alternative to the if statement when we need
// to compare a value against several possible matches.

var someCharacter: Character = "e"

//someCharacter = "k"
//someCharacter = "U"
//someCharacter = "X"
//someCharacter = "🐶"

switch someCharacter {
    
    case "a", "e", "i", "o", "u":
        print("\(someCharacter) is a lower-case vowel.")
        
    case "A", "E", "I", "O", "U":
        print("\(someCharacter) is a upper-case vowel.")
        
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        print("\(someCharacter) is a lower-case consonant.")
        
    case "B", "C", "D", "F", "G", "H", "J", "K", "L", "M",
    "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z":
        print("\(someCharacter) is a upper-case consonant.")
        
    default:
        print("\(someCharacter) is not a vowel or a consonant!")
}

//------------------------------------------------------------------------------

// For numbers, we can use Interval Matching to see if our value is included in
// an interval. This example uses number intervals to build up a sentence based
// on the number of gold coins a player has:

var playersGold = 250

var generalAmount: String

switch playersGold {
    
    case 0:
        generalAmount = "no"
        
    case 1...5:
        generalAmount = "only a few"
        
    case 5...100:
        generalAmount = "some"

    case 100...1000:
        generalAmount = "hundreds of"
        
    default:
        generalAmount = "a considerable amount of"
}

let shopKeeperText = "I see that you have \(generalAmount) gold coins."

print(shopKeeperText)


