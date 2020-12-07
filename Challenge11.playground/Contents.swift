import UIKit
import Foundation

func challenge11(_ input1: String, _ input2: String) -> Bool {
    guard input1.count == input2.count else { return false }
    var array1 = Array(input1), array2 = Array(input2), count = 0
    for (index, letter) in array1.enumerated() {
        if letter != array2[index] {
            count += 1
        }
        guard count <= 3 else { return false }
    }
    return true
}

assert(challenge11("Clamp", "Cramp") == true, "Challenge11 Failed")
assert(challenge11("Clamp", "Crams") == true, "Challenge11 Failed")
assert(challenge11("Clamp", "Grams") == true, "Challenge11 Failed")
assert(challenge11("Clamp", "Grans") == false, "Challenge11 Failed")
assert(challenge11("Clamp", "Cram") == false, "Challenge11 Failed")
assert(challenge11("clamp", "maple") == false, "Challenge11 Failed")

//This is the optimal solution \'o'/
