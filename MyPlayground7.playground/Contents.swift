//function
func myFunc(number1:Int,number2:Int) -> Int{
    return number1 + number2
}
print(myFunc(number1: 1, number2: 5))


func food(food:String) -> String{
    return "I like \(food) very much."
}
print(food(food:"rice"))


func color(color:String){
    print("I like \(color) very much.")
}
color(color: "white")

func average(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(average(1, 2, 3, 4, 5))
print(average(3, 8.25, 18.75))
