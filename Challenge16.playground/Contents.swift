import UIKit

func challenge16() {
    for num in 1...100 {
        if (num % 5 == 0) && (num % 3 == 0) {
            print("Fizz Buzz")
        } else if num % 3 == 0 {
            print("Fizz")
        } else if num % 5 == 0 {
            print("Buzz")
        } else {
            print(num)
        }
    }
}
challenge16()
