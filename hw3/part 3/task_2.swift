func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

for i in 1...100 {
    if isPrime(i) {
        print(i)
    }
}
/*
Problem 2: Prime Numbers
Create a function isPrime(_ number: Int) -> Bool that determines whether a given number is prime.
Then, use this function to print all prime numbers between 1 and 100.
*/
