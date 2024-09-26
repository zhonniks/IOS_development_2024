for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}
/*
Problem 1: FizzBuzz
Write a Swift program that prints the numbers from 1 to 100. 
For multiples of three, print “Fizz” instead of the number. 
For multiples of five, print “Buzz”. 
For numbers that are multiples of both three and five, print “FizzBuzz”.
*/
