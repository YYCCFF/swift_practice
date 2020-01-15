import UIKit

//for
//Output 1,2,3
for number1 in 1...3{
    print(number1)
}

//Output "apple" and "banana"
let foods = ["apple","banana","grape"]
for food in foods[..<2]{
    print(food)
}

//Output "grape"
for food in foods[2...]{
    print(food)
}
