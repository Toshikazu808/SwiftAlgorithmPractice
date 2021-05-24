import UIKit

func factorialOfValue(value: UInt) -> UInt {
    // UInt is a non negative value
    if value == 0 {
        return 1
    }
    var product:UInt = 1
    for i in 1...value {
        print(i)
        product = product * i
        
    }
    return product
}
print(factorialOfValue(value: 3))
print()


// Recursion only works when you have a terminating case!
func recursiveFactorialOfValue(value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    print(value)
    return value * recursiveFactorialOfValue(value: value - 1)
}
print(recursiveFactorialOfValue(value: 3))
