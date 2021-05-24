import UIKit
// MOST COMMON ELEMENT IN AN ARRAY

var str = ["red", "green", "blue", "yellow", "orange", "purple", "white", "black", "brown", "pink"]
let randomLength = Int.random(in: 0...100)
var array:[String] = []
for _ in 0..<randomLength {
    let randomIndex = Int.random(in: 0..<str.count)
    array.append(str[randomIndex])
}
print(array)


func getMostCommonColor(array: [String]) -> [String] {
    var mostCommonColors:[String] = []
    var colorDictionary: [String: Int] = [:]
    
    for color in array {
        if let count = colorDictionary[color] {
            colorDictionary[color] = count + 1
        } else {
            colorDictionary[color] = 1
        }
    }
    
    let highestValue = colorDictionary.values.max()
    for (color, _) in colorDictionary {
        if colorDictionary[color] == highestValue {
         mostCommonColors.append(color)
        }
        
    }
    return mostCommonColors
} //: getMostComonColor


let mostCommonColor = getMostCommonColor(array: array)
print("\n\(mostCommonColor)")
