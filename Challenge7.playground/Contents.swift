import UIKit

func challenge7(_ input: String) -> String{
    var array = Array(input), prev = "", count = 0
    
    for spaces in array {
        if String(spaces) == " " && prev == " "{
            array.remove(at: count)
            count -= 1
        }
        prev = String(spaces)
        count += 1
    }
    return String(array)
}


assert(challenge7("a   b   c") == "a b c", "Challenge 7 failed")
assert(challenge7("    a") == " a", "Challenge 7 failed")
assert(challenge7("abc") == "abc", "Challenge 7 failed")

//Another solution using refular expression
/*
func challenge7(_ input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: .nil)
}
*/
//" +" -> means 1 or more spaces
