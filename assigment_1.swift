// Task_1: Declare Variables for Personal Information

var firstName: String = "Zhannel"
var lastName: String = "Omarova"
var age: Int = 21
var birthYear: Int = 2003
var isStudent: Bool = true
var height: Double = 1.73

var occupation: String = "SWE"
var hometown: String = "Almaty"

let currentYear: Int = 2024
age = currentYear - birthYear

// Task_2: Create Variables for Your Hobbies and Interests
var hobby: String = "playing guitar"
var numberOfHobbies: Int = 5
var favoriteNumber: Int = 21
var isHobbyCreative: Bool = true

var favoriteBook: String = "Martin Eden by Jack London"
var favoriteSport: String = "Tennis"

//Task_3: Create a Summary of Your Life Story
var lifeStory: String = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I am currently a student. I enjoy \(hobby), which is a \(isHobbyCreative ? "creative" : "non-creative") hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber). My occupation is \(occupation), and I grew up in \(hometown). I also enjoy reading \(favoriteBook) and playing \(favoriteSport)."

print(lifeStory)

//Bonus Task
var futureGoals: String = "In the future, I want to become a professional Senior SWE 💻."
lifeStory += " \(futureGoals)"
print(lifeStory)
