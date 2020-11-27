import UIKit

extension String  {
    func challenge4 (_ input: String) -> Bool {
        let compare = input.lowercased()
        
        return (self.lowercased().range(of: compare) != nil)
    }
}

assert("Hello World".challenge4("Hello World") == true, "Challenge 4 failed")
assert("Hello World".challenge4("WORLD") == true, "Challenge 4 failed")
assert("Hello World".challenge4("Goodbye") == false, "Challenge 4 failed")

//Optimal Solution
/*
extension String {
    func challenge5 (_ input: String) -> Bool {
        return self.lowercased().range(of: input.lowercased()) != nil
    }
}
*/
