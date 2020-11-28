import UIKit

func challenge5(_ input1: String, _ input2: String) -> Int {
    var count = 0
    for letter in input2 {
        if input1 == String(letter){
            count += 1
        }
    }
    return count
}

assert(challenge5("a", "The rain in spain") == 2, "Challenge 5 failed")
assert(challenge5("i", "Mississippi") == 4, "Challenge 5 failed")
assert(challenge5("i", "Hacking With Swift") == 3, "Challenge 5 failed")

//Other solution
/*
func challenge5b(input: String, count: Character) -> Int {
    return input.reduce(0) {
        $1 == count ? $0 + 1 : $0
    }
}
 */
