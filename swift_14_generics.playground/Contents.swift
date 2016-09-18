
import UIKit

//------------------------------------------------------------------------------

// Generics

// Generic code enables us to write flexible, reusable code that can work with
// multiple types.

// Supose we wrote a function that could swap two Ints around.

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

// This works as expected on two Ints, but what if we wanted to swap two Floats?

var myInt1 = 10
var myInt2 = 50

swapTwoInts( &myInt1, &myInt2 )

print("After calling swapTwoInts: myInt1 is now \(myInt1), and myInt2 is now \(myInt2)")


// We could write a new function that swaps Floats like so:

func swapTwoFloats(_ a: inout Float, _ b: inout Float) {
    let tempA = a
    a = b
    b = tempA
}

var myFloat1:Float = 10.5
var myFloat2:Float = 50.5

swapTwoFloats( &myFloat1, &myFloat2 )

print("After call swapTwoFloats: myFloat1 is now \(myFloat1), and myFloat2 is now \(myFloat2)")


// Matter of fact, we could write a whole series of functions that allow us to
// swap all the types, but this is a waste since all these functions are
// basically the same code. The only thing that really changes is the type of
// the variables being swapped.

//------------------------------------------------------------------------------


// Generic Functions

// Generic functions can work with any type. Here's a generic version of the
// swapTwoInts function from above, called swapTwoValues which can swap any two
// values regardless of the type.

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

// The generic version of the function uses a placeholder type name instead of
// an actual type name (such as Int, String, or Double). In the example above,
// we're using a 'T' as a stand-in for the type.

myInt1 = 10
myInt2 = 50

swapTwoValues( &myInt1, &myInt2 )

print("After calling swapTwoValues: myInt1 is now \(myInt1), and myInt2 is now \(myInt2)")

myFloat1 = 10.5
myFloat2 = 50.5

swapTwoValues( &myFloat1, &myFloat2 )

print("After calling swapTwoValues: myFloat1 is now \(myFloat1), and myFloat2 is now \(myFloat2)")

var myString1:String = "String #1"
var myString2:String = "String #2"

swapTwoValues( &myString1, &myString2 )

print("After call swapTwoFloats: myString1 is now \(myString1), and myString2 is now \(myString2)")






