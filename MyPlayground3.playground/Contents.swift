import UIKit

//if,else if,else
let yourTestScore:Int = 70
let testScoreAverage:Int = 60

if yourTestScore > testScoreAverage{
    print("Your result is higher than average.")
}else if yourTestScore == testScoreAverage{
    print("Your result and average are same.")
}else{
    print("Your result is lower than average.")
}

let yourPassword = false
let yourPasswordInPC = true
let yourPasswordWrittenOnPaper = true

//Output "Not Correct"
if yourPassword && yourPasswordInPC{
    print("Correct.")
}else{
    print("Not Correct.")
}

//Output "Correct"
if yourPassword || yourPasswordInPC{
    print("Correct.")
}else{
    print("Not Correct.")
}

//Output "Correct"
if (yourPassword || yourPasswordInPC) && yourPasswordWrittenOnPaper{
    print("Correct.")
}else{
    print("Not Correct.")
}
