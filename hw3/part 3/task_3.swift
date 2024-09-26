

// Fahrenheit to Celsius and Kelvin
func fahrenheitToCelsiusAndKelvin(_ fahrenheit: Double) -> (celsius: Double, kelvin: Double) {
    let celsius = (fahrenheit - 32) * 5/9
    let kelvin = celsius + 273.15
    return (celsius, kelvin)
}

// Kelvin to Celsius and Fahrenheit
func kelvinToCelsiusAndFahrenheit(_ kelvin: Double) -> (celsius: Double, fahrenheit: Double) {
    let celsius = kelvin - 273.15
    let fahrenheit = (celsius * 9/5) + 32
    return (celsius, fahrenheit)
}

// Celsius to Fahrenheit and Kelvin
func celsiusToFahrenheitAndKelvin(_ celsius: Double) -> (fahrenheit: Double, kelvin: Double) {
    let fahrenheit = (celsius * 9/5) + 32
    let kelvin = celsius + 273.15
    return (fahrenheit, kelvin)
}

print("Enter the temperature value: ", terminator: "")
if let input = readLine(), let temperature = Double(input) {
    print("Enter the temperature (C-Celsius, F-Fahrenheit, K-Kelvin): ", terminator: "")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            let conv = celsiusToFahrenheitAndKelvin(temperature)
            print("\(temperature)°C is equal to \(conv.fahrenheit)°F and \(conv.kelvin)K")
        case "F":
            let conv = fahrenheitToCelsiusAndKelvin(temperature)
            print("\(temperature)°F is equal to \(conv.celsius)°C and \(conv.kelvin)K")
        case "K":
            let conv = kelvinToCelsiusAndFahrenheit(temperature)
            print("\(temperature)K is equal to \(conv.celsius)°C and \(conv.fahrenheit)°F")
        default:
            print("Please enter C, F, or K.")
        }
    } else {
        print("Invalid")
    }
} else {
    print("Invalid temperature")
}
/*
Write a Swift program that converts temperatures between Celsius, Fahrenheit, and Kelvin. Program Specifications:
• Prompt the user to input a temperature value.
• Ask the user to specify the unit of the entered temperature (C, F, or K).
• Convert the temperature to the other two units.
• Display the results with appropriate labels.
*/
