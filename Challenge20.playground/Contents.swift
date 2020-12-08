import UIKit

func challenge20(_ input: Int) -> Bool {
    guard input > 1 && (input % 2 == 0) || (input % 3 == 0) else { return true }
    return false
}

assert(challenge20(11) == true, "Challenge20 failed")
assert(challenge20(13) == true, "Challenge20 failed")
assert(challenge20(14) == false, "Challenge20 failed")
assert(challenge20(9) == false, "Challenge20 failed")
assert(challenge20(16777259) == true, "Challenge20 failed")
