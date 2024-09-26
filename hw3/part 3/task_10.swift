func hasUniqueCharacters(_ text: String) -> Bool {
    var encounteredCharacters = Set<Character>()
    
    for char in text {
        if encounteredCharacters.contains(char) {
            return false 
        }
        encounteredCharacters.insert(char)
    }
    return true
}

print("Enter a string to check for unique characters: ", terminator: "")
if let inputString = readLine() {
    if hasUniqueCharacters(inputString) {
        print("All characters in the string are unique.")
    } else {
        print("The string contains duplicate characters.")
    }
}
