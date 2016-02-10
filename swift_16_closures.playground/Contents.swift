
import UIKit

//------------------------------------------------------------------------------

// Closures


// A function is basically a closure that is named.
func sayHello() {
    print("Hello from function!")
}

// Here we use the function.
sayHello()


// This is a variable that points to a closure. It looks a little weird but
// the variable's type is this:
// () -> ()
// Which means the variable's type is a function that takes no arguments
// and returns no values

var sayHelloClosure: () -> () = {
    print("Hello from closure!")
}

// Now, even though sayHelloClosure is a variable, it does point to a
// block of code that can be called just like a function.
sayHelloClosure()

//------------------------------------------------------------------------------

// Now for an example that has arguments and a return type:

func combineTextFunc(text1:String, text2:String) -> String {
    
    return text1 + text2
}

combineTextFunc("Hello, ", text2:"Function!")

// Here is a variable that has a closure for its type but is hasn't been
// assigned yet.
var combineTextClosure: (String, String) -> String

// Later, we can assign a closure to it. but the syntax will look a bit
// different than we saw above.
combineTextClosure = {
    text1,text2 -> String in
    return text1 + text2
}

// Actually, we could also write it like this... with the return type
// inferred.

//combineTextClosure = {
//    text1,text2 -> String in text1 + text2
//}

// Or even like this... where all type are inferred and Swift allows
// us to talk about the arguments using place-holder substitutions.

//combineTextClosure = {
//    $0 + $1
//}

combineTextClosure("Hello, ", "Closure!")

//------------------------------------------------------------------------------



