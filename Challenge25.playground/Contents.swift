import UIKit

func challenge25(_ input: Int) -> Int {
    for num in 0...INT_MAX {
        let squr = Int(num * num)
        if squr > input {
            return Int(num - 1)
        } else if squr == input {
            return Int(num)
        }
    }
    return 0
}

assert(challenge25(9) == 3, "Challenge25 failed")
assert(challenge25(16777216) == 4096, "Challenge25 failed")
assert(challenge25(15) == 3, "Challenge25 failed")

//Optimal solution using binary search
/*
func challenge25b(input: Int) -> Int {
    guard input != 1 else { return 1 }
    var lowerBound = 0
    var upperBound = 1 + input / 2
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle
        if middleSquared == input {
            return middle
        } else if middleSquared < input {
            lowerBound = middle
        } else {
            upperBound = middle
        }
    }
    return lowerBound
}
*/
