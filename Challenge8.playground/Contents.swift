import UIKit

func challenge8(_ input1: String, _ input2: String) -> Bool {
    var str: String, res = input2
    for _ in input2 {
        if input1 == res {
            return true
        } else {
            str = String(res.popLast()!)
            res = str + res
        }
    }
    return false
}

assert(challenge8("abcde", "eabcd") == true, "Challenge 8 Failed")
assert(challenge8("abcde", "cdeab") == true, "Challenge 8 Failed")
assert(challenge8("abcde", "abced") == false, "Challenge 8 Failed")
assert(challenge8("abc", "a") == false, "Challenge 8 Failed")

//Optimal Solution

func challenge81(_ input1: String, _ input2: String) -> Bool {
    guard input1.count == input2.count else {
        return false
    }
    let combined = input1 + input2
    return combined.contains(input2)
}
