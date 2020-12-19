import UIKit

func challenge26(substract: Int, from: Int) -> Int {
    guard from > substract else { return 0 }
    var count = 0
    for _ in substract..<from {
        count += 1
    }
    return count
}

assert(challenge26(substract: 5, from: 9) == 4, "Challenge26 failed")
assert(challenge26(substract: 10, from: 30) == 20, "Challenge26 failed")

//Optimal solution
//Here we use the ~ operator, which flips the binary digits of a number so instead of having 24 we have -25(there's always one added)
/*
func challenge26(substract: Int, from: Int) -> Int {
    return from + (~substract + 1)
}
*/
