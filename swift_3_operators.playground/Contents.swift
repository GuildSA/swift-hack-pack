
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


// Increment and Decrement Operators

// Like C, Swift provides an increment operator (++) and a decrement operator (--)
// as a shortcut to increase or decrease the value of a numeric variable by 1.
// You can use these operators with variables of any integer or floating-point type.

var i = 0
++i // i now equals 1. Essentially, ++i is shorthand for saying i = i + 1.
--i // And --i is shorthand for saying i = i - 1.

// We can also place the increment and decrement operators after the var.
var j = 0
j++
j--

// When the operator is before the var, we call it the prefix version of the
// operator, and when it's after the var, it is the postfix version of the
// operator. Which one you choose to use doesn't matter unless the increment or
// decrement operator is being used as part of a larger assignment.

var a = 10
var b = 10

var x = ++a   // Increments the value of 'a' BEFORE assigning it to 'x'.
var y = b++   // Increments the value of 'b' AFTER assigning it to 'y'.

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
var hasTurbo = true

speed = (hasTurbo ? speed*2 : speed)

// With out a Ternary Conditional Operator, we would have to write a bit more
// code to get the same result.

speed = 100
hasTurbo = true

if hasTurbo {
    speed = speed * 2
}

