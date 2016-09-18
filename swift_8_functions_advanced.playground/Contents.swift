
import UIKit


// Functions with Multiple Return Values

// You can use a tuple type as the return type for a function to return multiple
// values as part of one compound return value.

func getTheHighScore() -> (name: String, score: Int) {
    
    // Pretned that we went out to our game server and brought back this data!
    let theName = "Chris"
    let theScore = 75200
    
    return (theName, theScore)
}

let highScoreData = getTheHighScore()

print("The high score is \(highScoreData.score) held by \(highScoreData.name)")


//------------------------------------------------------------------------------

// We can also use the keyword "typealias" to name tuple types. We can then use
// these name as a return type for our own functions.

typealias HighScore = (name: String, score: Int)

func getTheHighScore2() -> HighScore {
    
    // Pretend that we went out to our game server and brought back this data!
    let theName = "Jennifer"
    let theScore = 89500
    
    return (theName, theScore)
}

let highScoreData2: HighScore = getTheHighScore2()

print("The high score is \(highScoreData2.score) held by \(highScoreData2.name)")


//------------------------------------------------------------------------------

// In-Out Parameters

// By default, parameters are constants and their values can not be changed.
// For example, the following function will not compile under Swift because it
// is attempting to change the parameter called someNumber.

//func doSomethingNaughty(someNumber: Int) {
//    someNumber = 42 // Forbidden!
//}

// But there are times when we want the ability to change the values held by
// the variables that were passed into the function. To support this we mark
// the parameters that can be changed as inout parameters.

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    
    let temp = a // Let 'temp' hold the value of 'a'.
    a = b        // Set 'a' to whatever 'b' is.
    b = temp     // Finally, set 'b' to what 'a' was.
}

var var1 = 42
var var2 = 1000

print("var1 = \(var1), var2 = \(var2)") // Before Swap

// To pass an argument that can be changed inside the function, we must put
// an '&' charcater in front of it.

swapTwoInts( &var1, &var2 )

print("var1 = \(var1), var2 = \(var2)") // After Swap


//------------------------------------------------------------------------------

// Variadic Parameters

// A variadic parameter allow us to pass zero or more values of a specified
// type, and then get access to them.

func addAllNumbers(_ numbers: Int...) -> Int {
    
    var total: Int = 0
    
    for number in numbers {
        total += number
    }
    
    return total
}

print( addAllNumbers( 1, 2, 3, 4, 5) )

//------------------------------------------------------------------------------

// Nested Functions

// It's possible to declare a function inside another function and then use it!

func processNumbers(_ number1: Int, _ number2: Int) -> Int {
    
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    return add(number1, number2)
}

let result = processNumbers(1, 2)

print(result)

