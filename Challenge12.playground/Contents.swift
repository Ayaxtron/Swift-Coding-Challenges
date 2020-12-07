import UIKit

func challenge12(_ input: String) -> String {
    var words = input.components(separatedBy: " "), res = "", currentPrefix = ""
    for letter in words.first! {
        currentPrefix.append(letter)
        for word in words {
            guard String(word).hasPrefix(currentPrefix) else { return res }
        }
        res = currentPrefix
    }
    return res
}

assert(challenge12("swift switch swill swim") == "swi", "Challenge12 failed")
assert(challenge12("flip flap flop") == "fl", "Challenge12 failed")
