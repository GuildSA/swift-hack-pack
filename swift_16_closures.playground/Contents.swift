import UIKit

//------------------------------------------------------------------------------

// Closures
//
// Closures are self-contained blocks of functionality that can be passed
// around and used in your code. Closures in Swift are similar to lambda
// functions in other programming languages.


// A function is basically a closure that is named.
func sayHello() {
    print("Hello from function!")
}

// Here we use the function.
sayHello()


// Below is a variable that points to a closure. It looks a little weird but
// the variable's type is this:
//
// () -> ()
//
// Which means the variable's type is a closure that takes no arguments
// and returns no values.

var sayHelloClosure: () -> () = {
    print("Hello from closure!")
}

// Now, even though sayHelloClosure is a variable, it does point to a
// block of code that can be called just like a function.
sayHelloClosure()

//------------------------------------------------------------------------------

// Here's another function that has two parameters and a return type:

func combineTextFunc(text1:String, text2:String) -> String {
    
    return text1 + text2
}

combineTextFunc("Hello, ", text2:"Function!")


// Again, we'll create a variable that points to a closure which is capable of
// doing the same thing as the combineTextFunc function above. Note the
// variable's type:
//
// (String, String) -> String
//
// Which means the variable's type is a closure that takes two arguments
// which are Strings and returns a String.


var combineTextClosure: (String, String) -> String

// Later, we can assign a closure to it. but the syntax will look a bit
// different than we saw above.
combineTextClosure = {
    
    text1, text2 -> String in
    
    return text1 + text2
}

// Actually, we could also write it like this... with the return type
// inferred.

//combineTextClosure = {
//
//    text1, text2 -> String in
//
//    text1 + text2
//}

// Or even like this... where all type are inferred and Swift allows
// us to talk about the arguments using place-holder substitutions.

//combineTextClosure = {
//    $0 + $1
//}

combineTextClosure("Hello, ", "Closure!")

//------------------------------------------------------------------------------

// But what are closures good for? Most often in iOS development, you'll run
// into a closure as being the type required by a parameter of a function.
// In this common case, the closure is being used as a callback which the
// function can use to "call back" to programmer. When the function calls back
// with the closure, the programmer will have a chance to execute some code
// depending on what happened in the function.

// Here's a function that takes two closures. The first one called "response"
// will be called if the function was successful in getting some data from the
// server, and the second closure called "error" will be called if the function
// is unable to get any data from the server.

func getDataFromServer(response: (data:String) -> (), error: (errorCode:Int) -> ()) {
    
    // Pretend we go off here and fetch some data from our game server!
    
    let errorCode:Int = 0
    
    // If the errorCode is 0, we know we got the data!
    if errorCode == 0 {
        
        let theData = "[25000, 12580, 12300, 10250, 9600, 5200, 5100, 4900, 4250, 3800]"
        
        // Once we get the data, we can use the closure pointed to by
        // the "response" parameter to pass the data back out to the caller.
        response(data: theData)
        
    } else {
        
        // If we get back an error code instead, we can use the closure pointed to by
        // the "error" parameter to pass the error code back out to the caller.
        error(errorCode: errorCode)
    }
}

// Now, here's how we can call our function that takes two closures.

getDataFromServer( { (data:String) -> () in
        // We got the data!
        print("data = \(data)")
    },
    error: { (errorCode:Int) -> () in
        // Ooops! We got an error code back.
        print("error = \(errorCode)")
    } )

//------------------------------------------------------------------------------

// Because Closure syntax can make it hard to read a function signature, you may
// see other coders using the typealias keyword to hide the messy Closure syntax
// behind a type alias. The function below, is the same as getDataFromServer,
// which we just covered except this version creates two type aliases that are
// that are used at placeholders for the Closure syntax.

typealias ServerResponse = (data:String) -> ()
typealias ServerError = (errorCode:Int) -> ()

func getDataFromServer2(response: ServerResponse, error: ServerError) {
    
    // Pretend we go off here and fetch some data from our game server!
    
    let errorCode:Int = 0
    
    // If the errorCode is 0, we know we got the data!
    if errorCode == 0 {
        
        let theData = "[25000, 12580, 12300, 10250, 9600, 5200, 5100, 4900, 4250, 3800]"
        
        // Once we get the data, we can use the closure pointed to by
        // the "response" parameter to pass the data back out to the caller.
        response(data: theData)
        
    } else {
        
        // If we get back an error code instead, we can use the closure pointed to by
        // the "error" parameter to pass the error code back out to the caller.
        error(errorCode: errorCode)
    }
}

getDataFromServer2( { data in
        // We got the data!
        print("data = \(data)")
    },
   error: { errorCode in
        // Ooops! We got an error code back.
        print("error = \(errorCode)")
    } )



