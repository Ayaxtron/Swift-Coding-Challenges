import UIKit

func challenge18(_ input1: Int, _ input2: Int) -> Int {
    guard input1 >= 0 && input2 >= 0 else { return 0 }
    var res = 1
    for _ in 1...input2 {
        res = res * input1
    }C
    print(res)
    return res
}

assert(challenge18(4, 3) == 64, "Challegne18 Failed")
assert(challenge18(2, 8) == 256, "Challegne18 Failed")
