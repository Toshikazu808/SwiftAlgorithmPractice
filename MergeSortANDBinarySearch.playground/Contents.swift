import UIKit

// Creat a random array
var array:[Int] = []
let randomLength = Int.random(in: 0...100)
for _ in 0..<randomLength {
    let randomValue = Int.random(in: 0..<1000)
    array.append(randomValue)
}
print(array)


// MERGE SORT
func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    let leftArray = Array(array[0..<array.count/2])
    let rightArray = Array(array[array.count/2..<array.count])
    
    return merge(left: mergeSort(array: leftArray), right: mergeSort(array: rightArray))
}


func merge(left: [Int], right: [Int]) -> [Int] {
    var mergedArray: [Int] = []
    var left = left
    var right = right
    
    while left.count > 0 && right.count > 0 {
        if left.first! < right.first! {
            mergedArray.append(left.removeFirst())
        } else {
            mergedArray.append(right.removeFirst())
        }
    }
    
    return mergedArray + left + right
}
print()

var sortedArray = mergeSort(array: array)
print(sortedArray)


// BINARY SEARCH
func binarySearch(searchValue: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
    } //: LOOP
    return false
}
print(binarySearch(searchValue: 3, array: sortedArray))
