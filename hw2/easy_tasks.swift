//task 1
var fruits: Array<String> = ["Apple", "Banana", "Melon", "Orange", "Pineapple"]
print(fruits[2])

//task 2
var favoriteNumbers: Set<Int> = [2, 1, 9, 21]
favoriteNumbers.insert(9)
print(favoriteNumbers)

//task 3
var programming: [String: Int] = [
    "swift": 2014,
    "python": 1991,
    "java": 1995
]
print(programming["swift"] ?? "Not found")

//task 4
var colors: Array <String> = ["green","blue", "red", "yellow"]
colors[1] = "orange"
print(colors)
