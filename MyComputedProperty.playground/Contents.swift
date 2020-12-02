import UIKit
import Foundation

var width: Float = 1.5
var height: Float = 2.3

var bucketOfPain: Int {
    get {
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5
        let numberOfBucket = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBucket)
        return Int(roundedBuckets)
    }
    set {
        let areaCanCover = 1.5 * Double(newValue)
        print("This amount of paint can cover an area of \(areaCanCover)")
    }
}

print(bucketOfPain)

bucketOfPain = 30

print(bucketOfPain)
