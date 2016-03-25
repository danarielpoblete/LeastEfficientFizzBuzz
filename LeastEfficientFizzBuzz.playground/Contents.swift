//: Playground - noun: a place where people can play

import Foundation


// MARK: Helpers
func randomNumber(limit: Int) -> Int {
    return Int(arc4random_uniform(UInt32(limit))) + 1
}

func fizzBuzzPrinter(number: Int) {
    
    var printWord = ""
    
    if number % 3 == 0 && number % 5 == 0 {
        printWord += "FizzBuzz"
    }
    else if number % 3 == 0 {
        printWord += "Fizz"
    }
    else if number % 5 == 0 {
        printWord += "Buzz"
    }
    else {
        printWord += "\(number)"
    }
    
    print(printWord)
}

func fizzBuzzer(limit: Int) -> Int {
    
    var numberToLookFor = 0
    
    var runTime = 0;
    while (true) {
        
        // For tracking of efficiency
        runTime++
        
        // Find number
        let number = randomNumber(limit)
        
        guard numberToLookFor < limit else {
            // Completed all n numbers, stop running
            break
        }
        guard numberToLookFor + 1 == number else {
            // Number is not the next number in the series, move on
            continue
        }
        
        // Print and move on to next number
        fizzBuzzPrinter(number)
        numberToLookFor++
    }
    
    return runTime
}


// MARK: Begin FizzBuzzing
var numberLimit = 100
fizzBuzzer(numberLimit)