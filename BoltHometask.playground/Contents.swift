import UIKit
import Foundation


func calculateNumberOfPrimeNumbers(a: Int, b: Int) -> Int {
    if a == b {
        return checkNumberIsPrime(n: a) ? 2 : 0
    }
    var x = a
    var y = b
    if b < a { swap(&x, &y) }
    var count = 0
    for item in x...y {
        let isPrime = checkNumberIsPrime(n: item)
        if isPrime {
            count += 1
        }
    }
    return count
}

calculateNumberOfPrimeNumbers(a: 1, b: 1) == 2
calculateNumberOfPrimeNumbers(a: 4, b: 4) == 0
calculateNumberOfPrimeNumbers(a: 4, b: 1) == 3
calculateNumberOfPrimeNumbers(a: 8, b: 10) == 0
calculateNumberOfPrimeNumbers(a: 111, b: 118) == 1
calculateNumberOfPrimeNumbers(a: 7, b: 11) == 2

func checkNumberIsPrime(n: Int) -> Bool {
    if n<=3 { return true }
    for item in 2...Int(sqrt(Double(n))) {
        if n % item == 0 {
            return false
        }
    }
    return true
}

checkNumberIsPrime(n: 1) == true
checkNumberIsPrime(n: 2) == true
checkNumberIsPrime(n: 3) == true
checkNumberIsPrime(n: 4) == false
checkNumberIsPrime(n: 113) == true
checkNumberIsPrime(n: 118) == false

