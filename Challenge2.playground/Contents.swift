import UIKit

//Better to declare it as var than to repeat the same lowecased() again and again

func challenge2(input: String) -> Bool {
    return input.lowercased().reversed() == input.lowercased().reversed().reversed()
    
}

assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")
assert(challenge2(input: "Never odd or even") == false, "Challenge 2 failed")
assert(challenge2(input: "Hello, world") == false, "Challenge 2 failed")


//Optimal Solution

/*
func challenge2(input: String) -> Bool {
    let lowercased = input.lowercased()
    return String(lowercased.reversed()) == lowercased
}
*/

