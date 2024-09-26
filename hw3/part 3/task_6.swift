func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else {
        return []
    }
    
    var fibSequence = [Int]()
    
    for i in 0..<n {
        if i == 0 {
            fibSequence.append(0) // fist fib num
        } else if i == 1 {
            fibSequence.append(1) // sec fib num
        } else {
            let nextNumber = fibSequence[i - 1] + fibSequence[i - 2]
            fibSequence.append(nextNumber)
        }
    }
    
    return fibSequence
}


print("Enter the number of Fibonacci numbers to generate: ", terminator: "")
if let input = readLine(), let n = Int(input) {
    let fibonacciSequence = fibonacci(n)
    print("Fibonacci sequence: \(fibonacciSequence)")
} else {
    print("Invalid input. Please enter a valid integer.")
}
