import UIKit

//Its possible to initialice a Set directly form a String

func challenge1(input: String) -> Bool {
    
    var text = input
    var array = [Character]()
    //print(input.count)
    
    for _ in 0...input.count {
        
        guard let sec = text.popLast() else{
            break
        }
        array.append(sec)
    }
    let set = Set(array)
    if(set.count != input.count) {
        return false
    } else {
        return true
    }
    
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")


//--Optimal solution
/*
 
func challenge2(input: String) -> Bool {
    return Set(input).count == input.count
 }
 
*/
