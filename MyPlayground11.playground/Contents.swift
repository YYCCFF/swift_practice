import UIKit

//class
class Person{
    var name = ""
}

class BlogPost{
    var title:String?
    var body = "hey"
    var author:Person?
}

let post = BlogPost()
print("\(post.body) hello!")
post.title = "swift"

//Optional binding
if let actualTitle = post.title{
    //Optional contains value
    print("\(actualTitle) salut!")
}

//Testing for nil
if post.title != nil{
    //Optional contains value
    print("\(post.title!) salut!")
}
