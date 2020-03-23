import UIKit

//Declaring a new Dictionary
var carDB = [String:String]()

//Adding key value pairs
carDB["JSD 238"] = "Blue Ferrari"
carDB["SID 482"] = "Green Lamborghini"

//Retrieving data
carDB["JSD 238"]

//Updata a value for a key
carDB["JSD 238"] = "Red Ferrari"

//Remove a key-value pair
carDB["JSD 238"] = nil

//Iterate over it
for(license, car) in carDB{
    print("\(car) has a license: \(license)")
}
