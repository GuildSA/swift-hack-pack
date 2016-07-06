
import UIKit


// Enumerations

// An enumeration defines a common type for a group of related values and
// enables you to work with those values in a type-safe way within your code.

enum GamePadDirection {
    case Up
    case Down
    case Left
    case Right
}

var gamePadInput = GamePadDirection.Up

print("Game pad is being pushed: \(gamePadInput).")


// Now, if you're wondering why enumerations are useful, consider the typical
// alternative. Instead of using an enumeration to represent the possible
// Game pad Directions we could've defined a bunch of simple constants values,
// but if we do this, we lose the type safety that enumerations enforce!
/*
 let GamePadUp = 1
 let GamePadDown = 2
 let GamePadLeft = 3
 let GamePadRight = 4
 
 // This works and looks reasonable... so far so good!
 var gamePadDirection = GamePadUp
 
 // But without type safety, we can also do this which makes no sense!
 gamePadDirection = 55
 
 // What does the value 55 mean? Swift will not mark this an error because 55
 // is just as valid a value as 1,2,3, or 4 which are used by the constants.
*/

//------------------------------------------------------------------------------

// A switch statement is a great way to process the value of a variable that is
// an enumeration type.

gamePadInput = GamePadDirection.Down

switch gamePadInput {
    
case .Up:
    print("The Game pad is being pushed up!")
    
case .Down:
    print("The Game pad is being pushed down!")
    
case .Left:
    print("The Game pad is being pushed left!")
    
case .Right:
    print("The Game pad is being pushed right!")
}

//------------------------------------------------------------------------------

// Raw Values

// Enumeration cases can have actual values (called raw values), assigned to them
// as long as they are all of the same type.

enum Team: String {
    case A = "Alpha"
    case B = "Bravo"
    case C = "Charlie"
}

var team1 = Team.A

print(team1)

// If we assign Raw Values to the enumeration's, the enumeration automatically
// receives an initializer that can be used to create a new enumeration
// variable by passing in one of the Raw Values.

var team2 = Team(rawValue: "Bravo")

print(team2)


// If the raw value that was passed in can not be turned into an enumeration
// the initializer will return nil.
var team3 = Team(rawValue: "X-Ray")

print(team3)


//------------------------------------------------------------------------------

// Implicitly Assigned Raw Values

// When you’re working with enumerations that store integer or string raw values,
// you don’t have to explicitly assign a raw value for each case. When you don’t,
// Swift will automatically assign the values for you.

enum GameServerErrors: Int {
    
    case FindLevelData = 500
    case LoadLevelData // This will automatically bet set to 501
    
    case FindPlayerData // This will automatically bet set to 502
    case LoadPlayerData // This will automatically bet set to 503
    case SavePlayerData // This will automatically bet set to 504
}

// If you want to know what the raw value of the enumeration value is, you can
// call .rawValue on an enumeration variable to access it.

var error = GameServerErrors.LoadLevelData

print(error.rawValue)

error = GameServerErrors.SavePlayerData

print(error.rawValue)

//------------------------------------------------------------------------------

// Associated Values

// You can define Swift enumerations that are capable of storing associated
// values which allow the enumeration types to be customized during assignment.

enum WeaponTypes {
    
    case Sword(String, Int)
    case Bow(String, Int)
    case WoodenClub(Int)
    case Rock(Int)
}

var playerWeapon = WeaponTypes.Sword("Short Sword", 25)

playerWeapon = .Bow("Long Bow", 10)

playerWeapon = .WoodenClub(2)

playerWeapon = .Rock(1)

// Associated values can be extracted as part of a switch statement.

switch playerWeapon {
    
case .Sword(let name, let damage):
    print("The player is attacking with a \(name) for \(damage) points of damage.")
    
case .Bow(let name, let damage):
    print("The player is attacking with a \(name) for \(damage) points of damage.")
    
case .WoodenClub(let damage):
    print("The player is attacking with a WoodenClub for \(damage) points of damage.")
    
case .Rock(let damage):
    print("The player is attacking with a rock for \(damage) points of damage.")
}

//------------------------------------------------------------------------------

// Assigning a Default Enumeration Value

// If you don’t want to select a specific enumeration value when creating an
// instance then you can provide an initializer method which defaults to one of
// the enumeration values.

enum ArmorTypes {
    
    case Leather
    case ChainMail
    case Plate
    
    init() {
        
        // Everyone has at least Leather armor!
        self = .Leather
    }
}

var armor = ArmorTypes()

print("Default armor type is: \(armor)")




