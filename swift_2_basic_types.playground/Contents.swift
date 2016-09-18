
import UIKit

// Swift is a type-safe language. This means that we need to tell Swift what
// types our variables or constants are supposed to be. This way, if part of
// our code expects a String, we can’t pass it an Int by mistake.

// To make things easy on us, Swift uses Type Inference to figure out or
// 'infer' what type a variable or constant is meant to be.

// This is obviously a String since we assigned it a string of characters.
let gameTitle = "Angry Birds"

// And this is an Int since we assigned it a whole number with no fractional part.
var score = 1500

// You can check the type of a variable by passing it into a function called
// type(of:)
print( "gameTitle is of type: \(type(of: gameTitle))")
print( "score is of type: \(type(of: score))")

//------------------------------------------------------------------------------

// If we don't have an initial value that will specify the type, we can use a
// Type Annotation to specify what it is until we assign a value to it.

var playersName: String
var playersScore: Int

//------------------------------------------------------------------------------

// If we want to work with numbers that have a fractional component such as
// 3.1415926 we can use two other types called Float and Double.

let PI = 3.1415926

print( "PI is of type: \(type(of: PI))")

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

//------------------------------------------------------------------------------

// There are other specialty types such Int64 and Uint, but these are typically
// only used in cases where a function or method requires their use.

// Here's a listing of some of these specialty types:

// Int16  - A 16-bit signed integer value type.
// Int32  - A 32-bit signed integer value type.
// Int64  - A 64-bit signed integer value type.
// Int8   - An 8-bit signed integer value type.
// UInt   - A 64-bit unsigned integer value type.
// UInt16 - A 16-bit unsigned integer value type.
// UInt32 - A 32-bit unsigned integer value type.
// UInt64 - A 64-bit unsigned integer value type.
// UInt8  - An 8-bit unsigned integer value type.
// UTF16  - A codec for UTF-16.
// UTF32  - A codec for UTF-32.
// UTF8   - A codec for UTF-8.

// You can see this and others listed under the docs for the The Swift Standard Library:

// https://developer.apple.com/library/tvos/documentation/General/Reference/SwiftStandardLibraryReference/index.html




