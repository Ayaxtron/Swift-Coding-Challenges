import UIKit

var a = 3, b = 5

a = a + b
b = a - b
a = a - b

swap(&a, &b)

(a, b) = (b, a)
