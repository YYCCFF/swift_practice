import UIKit

//Int → String
var a: Int = 30
var b: String = String(a)
print(b)

//Int → Double
var c: Double = Double(a)
print(c)

//Double → String
var d: Double = 1.234
var e: String = String("\(d)")
print(e)

//Double → Int
var f: Int = Int(d)
print(f)

//String → Double
import Darwin
var g: String = "10.5"
var h: Double = atof(g)
print(h)

//String → Int
var i: String = "30"
var j: Int = Int(i)!
print(j)
