import UIKit

// Singleton - Singleton is a design pattern that restricts a class to only one instance. Every reference to the class refers to the same underlying instance.

// Apple makes extensive use of it
// Example

let myApp = UIApplication.shared

/// Below insatnce would not work as UIApplication is a true singleton
//let anotherApp = UIApplication()

// Creating your own singleton
class MySingleton {
    static let shared = MySingleton()
    // initializer is private, hence other instances cannot be created
    private init() {
    }
}

let mySingleton = MySingleton.shared


// SingletonPlus - Singleton plus pattern provides a shared singleton instance and also allows other instances to be created.

// FileManager is an example of singleton plus
let defaultFileManager = FileManager.default        // default instance is the singleton property of FileManager
let customFileManager = FileManager()



// WHEN SHOULD YOU USE IT?
/*
 Use the singleton pattern when having more than one instance of a class would cause problems, or when it just would not be logical.
 */

/*
 Use singleton plus when shared instance is useful most of the time, but you also want custom instances to be created.
 */
