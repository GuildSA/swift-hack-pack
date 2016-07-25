
import UIKit

// This one line is a comment!

/*
This is a comment that can span
over multiple lines!
*/

// Use the var keyword to declare a variable.

var myScore = 0

// Use the let keyword to declare a constant. A constant holds a value
// just like a variable but it can never be changed once it has been
// assigned a value.

let maxGoldCoins = 500

// You can declare multiple constants or multiple variables on a single line
// if you separate them by commas:

var health = 100, armor = 25, goldCoins = 10, rubies = 5

//------------------------------------------------------------------------------

// Variable and constant names can contain almost any character, including
// Unicode characters such as the symbol for Pi or emojis.
let π = 3.14159
let my🐶name = "Spot"

// To insert an emoji use: Command + Ctrl + Spacebar
// In most cases, you should really avoid this!

// One of the possible valid uses of this would be for programmers to write
// their code in their own native language.
let 你好 = "你好世界"

//------------------------------------------------------------------------------

// Swift gives us several built-in functions which we are designed to help us out.
// For example, we can use the print() function to print our data to the console.

var shopKeeperText = "Would you like to buy something for your adventure?"

print(shopKeeperText)

shopKeeperText = "How about a sword or a new suit of armor?"

print(shopKeeperText)

//------------------------------------------------------------------------------

// If we want to build-up a String using some of our variables, we can use
// string interpolation to include the name of a constant or variable
// into another string.

// To do this, wrap the var name in parentheses and escape it with a backslash
// before the opening parenthesis.
//
// Like this:   \(varName)

var weapon = "Dagger"
var price = 2

print("Are you sure you want to purchase the \(weapon) for \(price) gold coins?")

weapon = "Short Sword"
price = 10

print("Are you sure you want to purchase the '\(weapon)' for \(price) gold coins?")

weapon = "Mystical Blade of Awesomeness"
price = 1000

print("Are you sure you want to purchase the \"\(weapon)\" for \(price) gold coins?")

