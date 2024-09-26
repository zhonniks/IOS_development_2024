
func calculateGrades(for students: [String: Double]) -> (average: Double, highest: Double, lowest: Double) {
    let totalScores = students.values.reduce(0, +)
    let averageScore = totalScores / Double(students.count)

    let highestScore = students.values.max() ?? 0.0
    let lowestScore = students.values.min() ?? 0.0
    
    return (averageScore, highestScore, lowestScore)
}

var studentScores = [String: Double]() 

print("Enter student names and their scores:")

while true {
    print("Enter student name (or 'exit' to finish): ", terminator: "")
    guard let studentName = readLine(), studentName.lowercased() != "exit" else {
        break
    }
    
    print("Enter score for \(studentName): ", terminator: "")
    if let scoreInput = readLine(), let score = Double(scoreInput) {
        studentScores[studentName] = score 
    } else {
        print("Invalid score")
    }
}


if !studentScores.isEmpty {
    let (average, highest, lowest) = calculateGrades(for: studentScores)
    
    print("\nGrade Report:")
    print("Average Score: \(average)")
    print("Highest Score: \(highest)")
    print("Lowest Score: \(lowest)")
    
    for (student, score) in studentScores {
        if score > average {
            print("\(student): \(score) (Above Average)")
        } else if score < average {
            print("\(student): \(score) (Below Average)")
        } else {
            print("\(student): \(score) (Average)")
        }
    }
} else {
    print("No students")
}
