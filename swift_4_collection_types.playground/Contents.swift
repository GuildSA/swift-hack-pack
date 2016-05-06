
import UIKit

// Swift provides three primary collection types, known as arrays, dictionaries,
// and sets, for storing collections of values.

// Arrays are ordered collections of values.
// Dictionaries are unordered collections of key-value pairs or associations.
// Sets are unordered collections of unique values.

//------------------------------------------------------------------------------

// This is how to create an empty array that is ready to hold Strings.

var emptyArray = [String]()

// This creates an array to hold some weapon names for a game!
// Since we added some values to it during the creation, Swift knows it holds
// Strings so we don't need to specify that.

var weaponsList = ["Dagger", "Sword", "Club"]

// Since the order of our array entries are maintained, we can index into the
// array using a number.

print(weaponsList[0])
print(weaponsList[1])
print(weaponsList[2])

// We can also just ask for the whole array to be printed out.

print(weaponsList)

// Be careful though! Indexing an array position that doesn't exist can cause a crash!
// print(weaponsList[3])

// We can also use the subscript syntax to assign a new value to the var being stored
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

// You can wipe out an existing array and replace it with an empty one by
// assigning it to [].

weaponsList = []

//------------------------------------------------------------------------------

// This is how to create an empty dictionary that can hold key value pairs where
// the key is of type String and the value is of type Float.

var emptyDictionary = [String : Float]()

// This creates a dictionary of player names and their scores. The player's name
// is the key of type String, which points to the score which is the value of
// type Int.

var playerScores = [
    "Calvin": 2100,
    "Jennifer": 2700,
]

// We can access the individual values stored in the dictionary by using the keys.

print(playerScores["Calvin"])
print(playerScores["Jennifer"])

// We can also just ask for the whole dictionary to be printed out.

print(playerScores)

// We can use the subscript syntax to add a new key-value pairs to
// the dictionary.

playerScores["Kim"] = 3300

print(playerScores)

// We can also use subscript syntax to change the value associated with an
// existing key.
playerScores["Calvin"] = 3000

// You can wipe out an existing dictionary and replace it with an empty one by
// assigning it to [:].

playerScores = [:]

//------------------------------------------------------------------------------

// A Set stores distinct values of the same type in a collection with no defined
// ordering. You can use a Set instead of an Array when the order of items is not
// important, or when you need to ensure that a value only appears once in the
// collection.

var letters = Set<Character>()

print("Our set has \(letters.count) items.")

letters.insert("A")

print("Our set has \(letters.count) items.")

letters.insert("A") // Our set already has an "A", so this will do nothing.

print("Our set has \(letters.count) items.")

letters.insert("B")

print("Our set has \(letters.count) items.")

