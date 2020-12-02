import UIKit
import Foundation


// Observed Property
var pizzaInches: Int = 14 {
    willSet {
//        print(pizzaInches)
//        print(newValue)
    }
    didSet {
//        print(oldValue)
//        print(pizzaInches)
        if pizzaInches >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInches = 18
        }
    }
}

var numberOfPerson: Int = 12
let slicePerPerson: Int = 5

// Computed Property
// it call getters
var numberOfSlice: Int { // should spesify the data type
    get {
        return pizzaInches - 4
    }
    set {
        print("numberOfSlice now has new value which is \(newValue)")
    }
}

var numberOfPizza: Int {
    get{
        let numberOfPeopleFedPerPizza = numberOfSlice / slicePerPerson
        return numberOfPerson / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlice = numberOfSlice * newValue
        numberOfPerson = totalSlice / slicePerPerson
    }
}

//numberOfSlice = 20 // its active when you give new value at numberOfSlice
print(numberOfSlice)

numberOfPizza = 1

print(numberOfPerson)

// instead of making methode
// is better to make computed property

//var numberOfSliceOne = 10
//
//func calcPizzaSlice() {
//    numberOfSliceOne = pizzaInches - 4
//}
