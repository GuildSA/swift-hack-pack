
import UIKit

// Swift provides three primary collection types, known as arrays, dictionaries,
// and sets, for storing collections of values.

// Arrays are ordered collections of values.
// Dictionaries are unordered collections of key-value pairs or associations.
// Sets are unordered collections of unique values.

//------------------------------------------------------------------------------

// This creates an array to hold some weapon names for a game!

var weaponsList = ["Dagger", "Sword", "Club"]

// Since the order of our array entries are maintained, we can index into the
// array using a number.

print(weaponsList[0])
print(weaponsList[1])
print(weaponsList[2])

// Be careful though! Indexing an array position that doesn't exist can cause a crash!
// print(weaponsList[3])

// We can also the subscript syntax to assign a new value to the var being stored
// there.

weaponsList[2] = "Battle Mace" // Upgrade that old Club to a Battle Mace!

print(weaponsList[2])


// We can add new entries to the array by calling the append method. The append
// method always adds to the end of the array.
weaponsList.append("Long Bow")

// If we want to add something at a certain index, we can use a special version
// of insert to insert a new value at that index.
weaponsList.insert("Broad Sword", atIndex: 2)

// Likewise, we can also remove items with calls like removeAtIndex, removeFirst,
// or removeLast
weaponsList.removeAtIndex(1)

print(weaponsList)

// If we wanted to create an empty array, we can use the initializer syntax.
var emptyArray = [String]()


// If the type information can be inferred, you can create an empty array
// using only [].
weaponsList = []

//------------------------------------------------------------------------------

// This creates a dictionary of player names and their scores. The player's name
// is the key which points to the score which is the value.

var playerScores = [
    "Calvin": 2100,
    "Jennifer": 2700,
]

// We can use the subscript syntax to add a new key-value pairs to the dictionary
playerScores["Kim"] = 3300


// We can an update the value of a key using the updateValue method. Note how it
// returns the old value.
var oldValue = playerScores.updateValue(2900, forKey: "Calvin")

// You can also use subscript syntax to change the value associated with a
// particular key.
playerScores["Calvin"] = 3000


// If we wanted to create an empty dictionary, we can use the initializer syntax.
var emptyDictionary = [String: Float]()

// If the type information can be inferred, you can create an empty dictionary
// using only [:].

playerScores = [:]


//------------------------------------------------------------------------------

// A set stores distinct values of the same type in a collection with no defined
// ordering. You can use a set instead of an array when the order of items is not
// important, or when you need to ensure that an item only appears once.

var letters = Set<Character>()

print("Our set has \(letters.count) items.")

letters.insert("A")

print("Our set has \(letters.count) items.")

letters.insert("A") // Our set already has an "A", so this will do nothing.

print("Our set has \(letters.count) items.")

letters.insert("B")

print("Our set has \(letters.count) items.")

