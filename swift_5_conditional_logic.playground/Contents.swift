
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


