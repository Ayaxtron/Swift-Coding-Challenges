import UIKit

func challenge9(_ input: String) -> Bool {
    let pangram = input.lowercased()
    return Set(pangram).count == 27
}

assert(challenge9("The quick brown fox jumps over the lazy dog") == true, "Challenge9 failed")
assert(challenge9("The quick brown fox jumped over the lazy dog") == false, "Challenge9 failed")

//Optimal solution
/*
func challenge9(_ input: String) -> Bool {
    let pangram = Set(input.lowercased())
    let letters = pangram.filter { $0 >= "a" && $0 <= "z"}
    return letters.count == 26
}
*/
