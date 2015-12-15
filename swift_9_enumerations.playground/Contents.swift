
import UIKit


// Enumerations

// An enumeration defines a common type for a group of related values and 
// enables you to work with those values in a type-safe way within your code.

enum Direction {
    case Up
    case Down
    case Left
    case Right
}

var playerDirection = Direction.Up

print("Player is heading \(playerDirection).")

//------------------------------------------------------------------------------

playerDirection = Direction.Down

switch playerDirection {
    
    case .Up:
        print("The player is heading up!")
    
    case .Down:
        print("The player is heading down!")
    
    case .Left:
        print("The player is heading left!")
    
    case .Right:
        print("The player is heading right!")
}

//------------------------------------------------------------------------------

// Raw Values

// Enumeration cases can have actual values (called raw values), assigned to them
// as long as they are all of the same type.

enum Letters: Character {
    case A = "A"
    case B = "B"
    case C = "C"
}


var possibleLetter = Letters(rawValue: "A")

print(possibleLetter)


possibleLetter = Letters(rawValue: "X")

print(possibleLetter)


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

// If you want to know what the raw value of the Enum value is, you can call
// .rawValue on an enum variable to access it.

var error = GameServerErrors.LoadLevelData

print(error.rawValue)

error = GameServerErrors.SavePlayerData

print(error.rawValue)

//------------------------------------------------------------------------------

// Associated Values

// You can define Swift enumerations that are capable of storing associated
// values which allows the enum types to be customized during assignment.

enum WeaponTypes {
    
    case Sword(String, Int)
    case Bow(String, Int)
    case Dart(Int)
    case Rock(Int)
}

var playerWeapon = WeaponTypes.Sword("Short Sword", 25)

playerWeapon = .Bow("Long Bow", 10)

playerWeapon = .Dart(2)

playerWeapon = .Rock(1)

// Associated values can be extracted as part of a switch statement.

switch playerWeapon {
    
    case .Sword(let name, let damage):
        print("The player is attacking with a \(name) for \(damage) points of damage.")
    
    case .Bow(let name, let damage):
        print("The player is attacking with a \(name) for \(damage) points of damage.")
    
    case .Dart(let damage):
        print("The player is attacking with a dart for \(damage) points of damage.")
    
    case .Rock(let damage):
        print("The player is attacking with a rock for \(damage) points of damage.")
}

//------------------------------------------------------------------------------

// Default Enum Value

// If you didn’t want to select a specific enum value when creating an 
// instance then you can provide an init method which defaults to one of
// the enum values.

enum ArmorTypes {
    
    case Leather
    case ChainMail
    case Plate
    
    init() {
        self = .Leather
    }
}

var armor = ArmorTypes()

print("Default armor type is: \(armor)")




