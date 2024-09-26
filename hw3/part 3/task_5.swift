func countWordFrequency(in text: String) -> [String: Int] {
    let punctuationCharacters = CharacterSet.punctuationCharacters
    let lowercaseText = text.lowercased()
    let cleanedText = lowercaseText.components(separatedBy: punctuationCharacters).joined()
    
    let wordList = cleanedText.split(separator: " ").map { String($0) }
    var wordCountDictionary = [String: Int]()
    
    for word in wordList {
        if let currentCount = wordCountDictionary[word] {
            wordCountDictionary[word] = currentCount + 1
        } else {
            wordCountDictionary[word] = 1
        }
    }
    
    return wordCountDictionary
}

print("Enter a sentence: ", terminator: "")
if let inputSentence = readLine() {
    let wordFrequency = countWordFrequency(in: inputSentence)
    
    print("\nWord frequencies:")
    for (word, count) in wordFrequency {
        print("\(word): \(count)")
    }
}

