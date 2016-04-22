
import UIKit


// Functions are self-contained chunks of code that perform a specific task.
// You give a function a name that identifies what it does, and this name
// is used to “call” the function to perform its task when needed.

// This is a simple function called "sayGameOver". It takes no arguments and
// returns no value.
func sayGameOver() {
    
    print("Game Over!")
}

sayGameOver()

//------------------------------------------------------------------------------

// A function can be more useful if we pass it additional information.

// By passing a String argument value in parentheses, this function can print a
// a customized game over message that includes the player's name.

func sayGameOver2(name: String) {
    
    print("Game Over, " + name + "!")
}

sayGameOver2("Robert")

//------------------------------------------------------------------------------

// Functions can also do work and return the result of that work as a return
// value.

// This version of our function does not print a message but returns is as a
// String, which other code can use.

func sayGameOver3(name: String) -> String {
    
    let text = "Game Over, " + name + "!"
    
    return text
}

print( sayGameOver3("Robert") )
print( sayGameOver3("Jennifer") )

//------------------------------------------------------------------------------

// Functions can have more than one argument. This function takes two arguments:
// one that is a String for the player's name and a second one that is an Int
// which represents the player's score.

func sayGameOver4(name: String, score: Int) -> String {
    
    let text = "Game Over, \(name)! Your final score is \(score)"
    
    return text
}

// To call this function, we can pass just a String for the name, but for the
// second argument, we must specify the argument's name when we pass the
// argument's value.

print( sayGameOver4("Kim", score: 2500) )
print( sayGameOver4("Charles", score: 2000) )


//------------------------------------------------------------------------------


// If we want to, we can specify special External Parameter Names which are only
// used when calling the function

// You write an external parameter name before the internal parameter name it
// supports, separated by a space.

// The function below specifies both external and internal parameter names for
// both of its arguments.

func sayGameOver5(playersName name: String, playersScore score: Int) -> String {
    
    // The internal names must be used inside the function.
    let text = "Game Over, \(name)! Your final score is \(score)"
    
    return text
}

// The external names must be used when calling the function.
print( sayGameOver5(playersName: "Rick", playersScore: 1900) )
print( sayGameOver5(playersName: "Debbie", playersScore: 3000) )


//------------------------------------------------------------------------------

// Omitting External Parameter Names

// If you do not want to use an external name for the second or subsequent
// parameters of a function, write an underscore (_) instead of an explicit
// external name for that parameter.

func sayGameOver6(name: String, _ score: Int) -> String {
    
    let text = "Game Over, \(name)! Your final score is \(score)"
    
    return text
}

// Now, we can call the function with out having to specify any argument names.
print( sayGameOver6("Kim", 2500) )
print( sayGameOver6("Charles", 2000) )


//------------------------------------------------------------------------------

// Default Values

// You can define a default argument value for any parameter in a function
// by assigning a value to the parameter after that parameter's type.
// If a default value is defined, you can omit that parameter when calling
// the function.

func someFunction(someValue: Int = 42) {
    
    print(someValue)
}

someFunction(6)
someFunction()

