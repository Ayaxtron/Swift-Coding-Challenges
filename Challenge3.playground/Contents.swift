import UIKit

//Its important to romember that Strings are sequences in Swift

func challenge3(input1: String, input2: String) -> Bool {
    let array1 = Array(input1), array2 = Array(input2)
    guard array1.sorted() == array2.sorted() else {
        return false
    }
    return true
}


assert(challenge3(input1: "abca", input2: "abca") == true, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "cba") == true, "Challenge 3 failed")
assert(challenge3(input1: "a1 b2", input2: "b1 a2") == true, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "abca") == false, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "Abc") == false, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "cbAa") == false, "Challenge 3 failed")
assert(challenge3(input1: "abcc", input2: "abca") == false, "Challenge 3 failed")


//Optimal Solution

/*
func challenge3(input1:String, input2: String) -> Bool {
    return input1.sorted() == input2.sorted()
}
*/
