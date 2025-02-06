let array = [1, 2, 3]
let index = 5
if index < array.count {
    let element = array[index]
    print(element) //This will only execute if the index is valid
} else {
    print("Index out of bounds")
}

//Alternative using optional binding:
if let element = array[safe: index] {
    print(element)
} else {
    print("Index out of bounds")
}

//Extension for safe array access
extension Array {
    subscript (safe index: Int) -> Element? {
        get {
            guard index >= 0 && index < endIndex else { return nil }
            return self[index]
        }
    }
} 