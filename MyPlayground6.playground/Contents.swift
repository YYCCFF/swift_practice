//optional
var str1: String? = "apple"
var str2: String?

//出力はアンラップ前のものになる
//Output will be before unwrapping
print(str1)

//何も代入しないと変数にはnilが設定される
//If nothing is assigned, the variable will be set to nil
print(str2)

if let str1 = str1{
    print(str1)
}
