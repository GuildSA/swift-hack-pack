
import UIKit


// Arithmetic Operators

// We've seen the assignment operator (=) in action:

var myVar = 42

// In addition to assignment, Swift supports the four standard arithmetic
// operators for all number types:
// Addition (+)
// Subtraction (-)
// Multiplication (*)
// Division (/)

var testVar1 = 1 + 2       // Equals 3
var testVar2 = 5 - 3       // Equals 2
var testVar3 = 2 * 3       // Equals 6
var testVar4 = 10.0 / 2.5  // Equals 4.0

//------------------------------------------------------------------------------

// Compound Assignment Operators

// Like C, Swift provides compound assignment operators that combine assignment
// (=) with another operation. We can use these special assignment operators
// to reduce the amount of code we have to write.

var myNumber = 100

myNumber += 5 // Same as saying: myNumber = myNumber + 5

myNumber -= 5 // Same as saying: myNumber = myNumber - 5

myNumber *= 5 // Same as saying: myNumber = myNumber * 5

myNumber /= 5 // Same as saying: myNumber = myNumber / 5

//------------------------------------------------------------------------------

// The addition operator is also supported for Strings. When the addition
// operator is used to join two Strings together it is called, concatenation.

print("Hello, " + "world!")  // Equals the single String, "Hello, world".

//------------------------------------------------------------------------------

// Comparison Operators

// Swift supports all standard C comparison operators:

// Equal to                  (a == b)
// Not equal to              (a != b)
// Greater than              (a > b)
// Less than                 (a < b)
// Greater than or equal to  (a >= b)
// Less than or equal to     (a <= b)

1 == 1   // true, because 1 is equal to 1
2 != 1   // true, because 2 is not equal to 1
2 > 1    // true, because 2 is greater than 1
1 < 2    // true, because 1 is less than 2
1 >= 1   // true, because 1 is greater than or equal to 1
2 <= 1   // false, because 2 is not less than or equal to 1

//------------------------------------------------------------------------------

// Ternary Conditional Operator

// The ternary conditional operator is a special operator with three parts, which
// takes the form of question ? answer1 : answer2.

var speed = 100
var turboButtonPressed = true

speed = (turboButtonPressed ? speed*2 : speed)

// With out a Ternary Conditional Operator, we would have to write a bit more
// code to get the same result.

speed = 100
turboButtonPressed = true

if turboButtonPressed {
    speed = speed * 2
}

