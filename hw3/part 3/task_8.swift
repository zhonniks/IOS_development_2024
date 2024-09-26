import Foundation

func isPalindrome(_ inputString: String) -> Bool {
    let punctuationAndWhitespaceSet = CharacterSet.punctuationCharacters.union(.whitespaces)
    
        let normalizedString = inputString
        .lowercased()
        .components(separatedBy: punctuationAndWhitespaceSet) 
        .joined() 
    
    return normalizedString == String(normalizedString.reversed())
}

print("Enter a string to check if it's a palindrome: ", terminator: "")
if let userInput = readLine() {
    if isPalindrome(userInput) {
        print("The string is a palindrome.")
    } else {
        print("The string is not a palindrome.")
    }
}
