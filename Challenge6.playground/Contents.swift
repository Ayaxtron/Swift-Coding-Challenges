import UIKit
import Foundation

func challenge6(_ input: String) -> String {
    var array: [String] = []
    for letter in input {
        if array.contains(String(letter)) {
            
        }else{
            array.append(String(letter))
        }
    }
    return array.joined()
}


assert(challenge6("wombat") == "wombat", "Challenge 6 failed")
assert(challenge6("hello") == "helo", "Challenge 6 failed")
assert(challenge6("Mississippi") == "Misp", "Challenge 6 failed")

//Another Solution
/*
 func challenge6c(string: String) -> String {
    var used = [Character: Bool]()
    let result = string.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}
 */
