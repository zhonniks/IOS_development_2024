//task 1 - Dictonary Key Addition
var countryPopulation: [String: Int] = [
    "Kazakhstan": 20000000,
    "Russia": 144000000,
    "Uzbekistan": 35000000
]
countryPopulation["Kyrgyzstan"] = 7000000
print(countryPopulation)

//task 2 - Set Union and Subtract 
var firstSet: Set<String> = ["cat", "dog"]
var secondSet: Set<String> = ["dog", "mouse"]
var unionSet: Set<String> = firstSet.union(secondSet)
var finalResult: Set<String> = unionSet.subtracting(secondSet)
print(finalResult)

//task 3 - Nested Collection
var studentJournal: [String: Array<Int>] = [
    "Zhannel": [5, 5, 10, 5, 10],
    "Yernur": [9, 5, 2, 7, 10],
    "Camilla": [10, 10, 10, 10, 10]
]

studentJournal["Zhannel"]?[1] = 10
print(studentJournal["Zhannel"] ?? "no doesn't exist ]")
