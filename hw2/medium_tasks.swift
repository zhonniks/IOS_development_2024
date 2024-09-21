//task 1 
var firstSet: Set<Int> = [1, 2, 3, 4]
var secondSet: Set<Int> = [3, 4, 5, 6]
var intersection: Set<Int>  = firstSet.intersection(secondSet)
print(intersection)

//task 2 
var studentsScore: [String: Int] = [
    "Yernur": 100,
    "Olga": 95,
    "Aisha": 85
]
studentsScore["Olga"] = 100
print(studentsScore)

//task 3
var firstArr: Array<String> = ["apple", "banana"]
var secondArr: Array<String> = ["cherry", "date"]
var thirdArr: Array<String> = firstArr + secondArr
print(thirdArr)
