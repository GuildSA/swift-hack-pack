
import UIKit

// Swift is a type-safe language. This means that we need to tell Swift what
// types our variables or constants are supposed to be. This way, if part of
// our code expects a String, we can’t pass it an Int by mistake.

// To make things easy on us, Swift uses Type Inference to figure out or
// 'infer' what type a variable or constant is meant to be.

// This is obviously a String since we assigned it some characters.
let gameTitle = "Angry Birds"

// And this is an Int since we assigned it a whole number with no fractional part.
var score = 1500

// You can check the type of a variable by accessing the property dynamicType.
print( "gameTitle is of type: \(gameTitle.dynamicType)")
print( "score is of type: \(score.dynamicType)")

//------------------------------------------------------------------------------

// If we don't have an initial value that will specify the type, we can use a
// Type Annotation to specify what it is until we assign a value to it.

var playersName: String
var playersScore: Int

//------------------------------------------------------------------------------

// If we want to work with numbers that have a fractional component such as
// 3.1415926 we can use two other types called Float and Double.

let PI = 3.1415926

print( "PI is of type: \(PI.dynamicType)")

// The reason we get two types, Float and Double, for fractional numbers is
// because we get to choose how much accuracy we want. A Float takes up less
// memory than a Double but it is less accurate.

// For example, if we use a Double for our var latitude, and the fractional
// part has a lot of numbers, everything will still be fine.
var latitude: Double
latitude = 36.166667

// But notice how our longitude, which is using a Float, loses the last 3
// from its value's end. Does it matter? Well, that depends on what you're
// going to do with the value.
var longitude: Float
longitude = -86.783333

//------------------------------------------------------------------------------

// Another built-in data type of Swift is called Bool, which is short for Boolean.
// Bools can only store the values true or false.

var playerFoundMagicKey: Bool

playerFoundMagicKey = true

//------------------------------------------------------------------------------

// There's also a type called Character which can only hold a single character value.
// It's often used when processing or manipulating String data.
var aSingleLetter: Character

aSingleLetter = "A"


