let numbers = [2, 4, 5, 7, 8]

var filtered = [Int]()
for number in numbers {
    if number > 5 {
        filtered.append(number)
    }
}
filtered


var filtered2 = [Int]()
numbers.forEach { number in
    if number > 5 {
        filtered2.append(number)
    }
}
filtered2

let filtered3 = numbers.filter { number in
    number > 5
}

let filtered4 = numbers.filter { $0 > 5 }
filtered4

let filtered5 = numbers.filter{ $0 > 5 && $0 % 2 == 0 }
filtered5

let words = ["hello", "world", "how", "are", "you"]
let filtered6 = words.filter { word in
    word.contains("w")
}


struct City {
    let name: String
    let isCapital: Bool
}

let cities = [
    City(name: "Canberra", isCapital: true),
    City(name: "Rome", isCapital: true),
    City(name: "Liverpool", isCapital: false)
]

let capitals = cities.filter { city in
    city.isCapital == true
}

let capitals2 = cities.filter{ $0.isCapital && $0.name.first == "R" }
capitals2
