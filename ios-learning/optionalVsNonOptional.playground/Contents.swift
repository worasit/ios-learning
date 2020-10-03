import UIKit

let numbers = [1,2,3]
let selectedNumber = numbers.firstIndex(of: 10)
print(selectedNumber)

struct User {
    var name:String?
    var age:Int?
    
    var reachedAgeLimit:Bool {
        guard let unwrappedAge = age else { return false }
        return unwrappedAge > 10
    }
    
    func greet() -> String {
        if let unwrappedName = name {
            return "Hello \(unwrappedName)"
        } else {
            return "Hello Anonymous"
        }
    }
}

let user = User(name: "worasit", age: 29)
print(user.name ?? "")
print(user.greet())
print(user.reachedAgeLimit)

