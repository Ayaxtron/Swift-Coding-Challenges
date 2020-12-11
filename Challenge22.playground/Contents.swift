import UIKit

func challenge22(_ input: Int) -> Int {
    var binary = String(input, radix: 2)
    for _ in 0...8 {
        if binary.count != 8 {
            binary = "0" + binary
        } else {
            break
        }
        
    }
    let res = String(binary.reversed())
    let num = Int(res, radix: 2)!
    
    return num
}

let test = challenge22(32)
let test2 = challenge22(41)

//Other solution
/*
func challenge22(number: UInt) -> UInt {
    let binary = String(number, radix: 2)
    let paddingAmount = 8 - binary.count
    let paddedBinary = String(repeating: "0", count: paddingAmount) + binary
    let reversedBinary = String(paddedBinary.reversed())
    return UInt(reversedBinary, radix: 2)!
}
*/
