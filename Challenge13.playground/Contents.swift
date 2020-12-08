import UIKit

func challenge13(_ input: String) -> String {
    let letters = Array(input)
    var count = 0, value = "", finalValue = ""
    for letter in letters {
        if value != String(letter) {
            if count != 0 && value != "" {
                finalValue.append(String(count))
                count = 0
            }
            finalValue.append(String(letter))
            value = String(letter)
        }
        count += 1
    }
    finalValue.append(String(count))
    
    return finalValue
}

assert(challenge13("aabbcc") == "a2b2c2", "Challenge13 failed")
assert(challenge13("aaabaaabaaa") == "a3b1a3b1a3", "Challenge13 failed")
assert(challenge13("aaAAaa") == "a2A2a2", "Challenge13 failed")

//Another Solution
/*
func challenge13a(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
        for letter in input {
            if letter == currentLetter {
                letterCounter += 1
            } else {
                if let current = currentLetter {
                    returnValue.append("\(current)\(letterCounter)")
                }
                    currentLetter = letter
                    letterCounter = 1
                }
            }
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            return returnValue
}
*/
