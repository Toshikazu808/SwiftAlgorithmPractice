import UIKit
// FILTER MAP REDUCE
// These built in function help you from writing so many lines of code in a for loop, and can reduce it down to just 1 line of code!


struct Device {
    var type: String
    var price: Float
    var color: String
}

var myiMacPro = Device(type: "iMac Pro", price: 4999.00, color: "Space Gray")
var myiPhone6Plus = Device(type: "iPhone", price: 799.00, color: "White")
var myiPhone7 = Device(type: "iPhone", price: 699.00, color: "Black")
var myiPad = Device(type: "iPad", price: 599.00, color: "Space Gray")
var myAppleWatch = Device(type: "Apple Watch", price: 349.00, color: "Space Gray")
var myAppleTV = Device(type: "Apple TV", price: 199.00, color: "Black")

let myDevices = [myiMacPro, myiPhone6Plus, myiPhone7, myiPad, myAppleWatch, myAppleTV]


// Filters through the array to find some value
print("\n*************** FILTER ***************")
let iPhones = myDevices.filter({return $0.type == "iPhone"})
print("iPhones: \(iPhones)")

// OLD WAY TO DO IT
var myPhones: [Device] = []
for device in myDevices {
    if device.type == "iPhone" {
        myPhones.append(device)
    }
}
//print("iPhones: \(myPhones)")




// Changes every object in that array
print("\n*************** MAP ***************")
// This can be done using a for loop like the above example
let canadianPrices:[Float] = myDevices.map({return $0.price * 1.2})
print("canadianPrices: \(canadianPrices)")




// Combines all of your values into ONE
print("\n*************** REDUCE ***************")
let totalCanadianPrice:Float = canadianPrices.reduce(0.0, +)
print("totalCanadianPrice: \(totalCanadianPrice)")

// OLD WAY TO DO IT
var totalPrice:Float = 0.0
for price in canadianPrices {
    totalPrice += price
}
print("totalPrice: \(totalPrice)")


