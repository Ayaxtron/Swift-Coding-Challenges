import UIKit

func challenge24(_ input: String) -> Int {
    var numS = "", numI = 0
    for letter in input {
        if Int(String(letter)) != nil {
            numS.append(letter)
        } else {
            numI += Int(numS) ?? 0
            numS = ""
        }
    }
    numI += Int(numS) ?? 0
    return numI
}

assert(challenge24("a1b2c3") == 6, "Challenge24 failed")
assert(challenge24("a10b20c30") == 60, "Challenge24 failed")
assert(challenge24("h8ers") == 8, "Challenge24 failed")
