import UIKit
import Foundation

// About String
let quotes = "Then he tapped a sign saying \"Believe\" and walked away."
let movie = """
A day
in the life
of a king
"""
let filename = "paris.jpg"

print(movie)
print(quotes)
print(quotes.uppercased())
print(quotes.count)
print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))

let number = 0.1 + 0.2
print(number) // About Double type decimal precision

var name = "Nicolas Cage"
name = String(57)
print(name)

var number1: Double = 1.0 / 3.0

print(number1)

var gameOver = false
print(gameOver)

print(!gameOver)

gameOver.toggle( )
print(gameOver)


let Celsius: Double = 32
let Fahrenheit = Celsius * 9.0 / 5 + 32

print("Celsius is \(Celsius)˚C And Fahrenheit is \(Fahrenheit)˚F")

var albums = [String]() // == var albums = Array<String>()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters .count)

let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

// When reading from a dictionary, you can provide a default value to use if the key doesn't exist.
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquile O'Neal"] = 216
heights["LeBron James"] = 216

heights["LeBron James"] = 206 // Changes Value (Swift don't allow duplicate keys)

print(heights["LeBron James", default: 0])

for values in heights {
    print(values)
}

print(heights.count)
heights.removeAll()
print(heights.count)

//--------------------------------------------------------------------

class Node<T: Equatable> {
    let id: Int
    let data: T
    var next: Node?
    
    init(id: Int, data: T, next: Node? = nil){
        self.id = id
        self.data = data
        self.next = next
    }
}

struct LinkedList<T: Equatable> {
    var head: Node<T>?
    var tail: Node<T>?
    
    func showList() {
        var now = head
        print("===== Linked List =====")
        while now != nil {
            now?.next != nil ? print("\(now!.id): \(now!.data) -> ", terminator: "") : print("\(now!.id): \(now!.data)")
            
        }
    }
}

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday
day = .friday

print(day)
