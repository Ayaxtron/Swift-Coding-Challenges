import UIKit

func challenge23(_ input: String) -> Bool {
    for num in input {
        guard Int(String(num)) != nil else { return false }
    }
    return true
}

assert(challenge23("01010101") == true, "Challenge23 failed")
assert(challenge23("123456789") == true, "Challenge23 failed")
assert(challenge23("9223372036854775808") == true, "Challenge23 failed")
assert(challenge23("1.98") == false, "Challenge23 failed")
