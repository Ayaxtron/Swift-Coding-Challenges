import UIKit

func challenge10(_ input: String) -> (vowels: Int, consonants: Int) {
    let characters = Array(input.lowercased())
    let letters = characters.filter { $0 >= "a" && $0 <= "z"}
    var vowels = 0, consonants = 0
    for letter in letters {
        if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
            vowels += 1
        } else {
            consonants += 1
        }
        
    }
    
    return (vowels, consonants)
}

assert(challenge10("Swift Coding Challenges") == (6, 15), "Challenge 10 failed")
assert(challenge10("Mississippi") == (4, 7), "Challenge 10 failed")

//Other solution
/*
func challenge10(_ input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0, consonantCount = 0
    for letter in input.lowercased() {
        let StringLetter = String(letter)
        if vowels.contains(StringLetter) {
            vowelCount += 1
        } else {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}
*/
