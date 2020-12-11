import UIKit

func challenge21(_ input: Int) -> (max: Int?, min: Int?) {
    var max: Int? = nil, min: Int? = nil, num = String(input, radix: 2)
    let count = num.filter { $0 == "1"}
    for first in (0..<input).reversed() {
        let firstNum = String(first, radix: 2)
        let res1 = firstNum.filter { $0 == "1"}
        if count == res1 {
            min = first
            break
        }
    }
    for second in  (input + 1...Int.max){
        let secondNum = String(second, radix: 2)
        let res2 = secondNum.filter { $0 == "1"}
        if count == res2 {
            max = second
            break
        }
    }
    return (max, min)
}

let result = challenge21(12)
print(result)
