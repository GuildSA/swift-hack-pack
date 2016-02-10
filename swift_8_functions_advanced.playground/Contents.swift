
import UIKit


// Functions with Multiple Return Values

// You can use a tuple type as the return type for a function to return multiple
// values as part of one compound return value.

// The example below defines a function called findMinMax, which finds the
// smallest and largest numbers in an array of Int values.

func findMinMax(array: [Int]) -> (min: Int, max: Int) {
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1 ..< array.count] {
        
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = findMinMax([8, -6, 2, 109, 3, 71])

print("The min is \(bounds.min) and the max is \(bounds.max)")


//------------------------------------------------------------------------------


// We can also use the keyword typealias to name tuple types. We can then use 
// these name as a return type for our own functions.

typealias Response = (code: Int, message: String)

func getPlayerDataFromServer() -> Response {
    
    // Lets pretend that we got that the player's data!
    return (200, "OK")
}

let responseCode: Response = getPlayerDataFromServer()

print(responseCode)


//------------------------------------------------------------------------------


// Variadic Parameters

// A variadic parameter allow us to pass zero or more values of a specified
// type, and then get access to them.

func addAllNumbers(numbers: Int...) -> Int {
    
    var total: Int = 0
    
    for number in numbers {
        total += number
    }
    
    return total
}

addAllNumbers(1, 2, 3, 4, 5)

//------------------------------------------------------------------------------

// Constant and Variable Parameters

// Function parameters are constants by default. Trying to change the value of
// a function parameter from within the body of that function results in a
// compile-time error. This means that you can’t change the value of a
// parameter by mistake.

// However, if you really want to modify a parameter you can use the var keyword
// allow it

func sayHello(var originalString: String) -> String {
    
    // The parameter testString can be modified
    originalString = "Hello, " + originalString + "!"
    
    return originalString
}

var text = "world"
var newText = sayHello(text)

print( newText )

// NOTE
// The changes you make to a variable parameter inside the function do not
// persist once the function call ends.


//------------------------------------------------------------------------------

// In-Out Parameters

// Variable parameters, as described above, can only be changed within the
// function itself. If you want a function to modify a parameter's value, and
// you want those changes to persist after the function call has ended, define
// that parameter as an in-out parameter instead.

func addHello(inout originalString: String) {
    
    // The parameter testString can be modified
    originalString = "Hello, " + originalString + "!"
}

text = "world"

addHello( &text )

print(text)


//------------------------------------------------------------------------------

// Here's another example of using In-Out Parameters:

func swapTwoInts(inout a: Int, inout _ b: Int) {
    
    let temp = a // Let 'temp' hold the value of 'a'.
    a = b        // Set 'a' to whatever 'b' is.
    b = temp     // Finally, set 'b' to what 'a' was.
}

var myFirstInt = 42
var mySecondInt = 55

swapTwoInts( &myFirstInt, &mySecondInt )

print("myFirstInt is now \(myFirstInt), and mySecondInt is now \(mySecondInt)")


//------------------------------------------------------------------------------

// Nested Functions

// It's possible to declare a function inside another function and then use it!

func processNumbers(number1: Int, _ number2:Int) -> Int {
    
    func add(a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    return add(number1, number2)
}

let result = processNumbers(1, 2)

print(result)

//------------------------------------------------------------------------------

// It's also possible to declare functions inside of another function
// and then return it so it can be used externally.

func getCustomFunction(functionId: Int) -> (Int, Int) -> Int {
    
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func subtract(a: Int, b: Int) -> Int {
        return a - b
    }
    
    func multiply(a: Int, b: Int) -> Int {
        return a * b
    }
    
    func divide(a: Int, b: Int) -> Int {
        return a / b
    }
    
    if functionId == 0 {
        return add
    } else if functionId == 1 {
        return subtract
    } else if functionId == 2 {
        return multiply
    } else {
        return divide
    }
}

let computeFunction = getCustomFunction(0)

var answer = computeFunction(1, 2)

print(answer)
