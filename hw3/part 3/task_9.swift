import Foundation

func add(_ firstOperand: Double, _ secondOperand: Double) -> Double {
    return firstOperand + secondOperand
}

func subtract(_ firstOperand: Double, _ secondOperand: Double) -> Double {
    return firstOperand - secondOperand
}

func multiply(_ firstOperand: Double, _ secondOperand: Double) -> Double {
    return firstOperand * secondOperand
}

func divide(_ firstOperand: Double, _ secondOperand: Double) -> Double? {
    if secondOperand == 0 {
        return nil // Return nil for division by zero
    }
    return firstOperand / secondOperand
}

var continueCalculating = true

while continueCalculating {
    print("Enter the first number: ", terminator: "")
    guard let firstInput = readLine(), let firstValue = Double(firstInput) else {
        print("Invalid input. Please enter a numeric value.")
        continue
    }
    
    print("Enter the second number: ", terminator: "")
    guard let secondInput = readLine(), let secondValue = Double(secondInput) else {
        print("Invalid input. Please enter a numeric value.")
        continue
    }
    
    print("Choose an operation (+, -, *, /): ", terminator: "")
    guard let selectedOperation = readLine() else {
        print("Invalid operation. Please choose one of +, -, *, or /.")
        continue
    }
    
    var calculationResult: Double?

    switch selectedOperation {
    case "+":
        calculationResult = add(firstValue, secondValue)
    case "-":
        calculationResult = subtract(firstValue, secondValue)
    case "*":
        calculationResult = multiply(firstValue, secondValue)
    case "/":
        calculationResult = divide(firstValue, secondValue)
        if calculationResult == nil {
            print("Error: Division by zero is not allowed.")
            continue
        }
    default:
        print("Invalid operation. Please choose one of +, -, *, or /.")
        continue
    }
    
    if let finalResult = calculationResult {
        print("The result of \(firstValue) \(selectedOperation) \(secondValue) is: \(finalResult)")
    }
    
    print("Do you want to perform another calculation? (yes/no): ", terminator: "")
    if let continueResponse = readLine(), continueResponse.lowercased() != "yes" {
        continueCalculating = false
    }
}

print("Thank you for using the calculator. Goodbye!")
