func displayMenu() {
    print("""
    Shopping List Menu:
    1. Add an item
    2. Remove an item
    3. View the shopping list
    4. Exit
    """)
}

var shoppingList = [String]() 
var isRunning = true 

while isRunning {
    displayMenu() 
    
    print("Enter your choice: ", terminator: "")
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Enter the item to add: ", terminator: "")
            if let item = readLine(), !item.isEmpty {
                shoppingList.append(item)
                print("\(item) has been added to the list.\n")
            } else {
                print("Invalid input\n")
            }
        case "2":
            print("Enter the item to remove: ", terminator: "")
            if let item = readLine(), !item.isEmpty {
                if let index = shoppingList.firstIndex(of: item) {
                    shoppingList.remove(at: index)
                    print("\(item) removed from the list\n")
                } else {
                    print("\(item) is not in the shopping list\n")
                }
            } else {
                print("Invalid input\n")
            }
        case "3":
            if shoppingList.isEmpty {
                print("Your shopping list is empty\n")
            } else {
                print("Shopping List:")
                for (index, item) in shoppingList.enumerated() {
                    print("\(index + 1). \(item)")
                }
                print()
            }
        case "4":
            isRunning = false
            print("Exiting the application. Goodbye!")
        default:
            print("Invalid choice\n")
        }
    }
}
