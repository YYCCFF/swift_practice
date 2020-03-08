import UIKit

//class
class Person{
    var name = ""
}

class BlogPost{
    var fullTitle:String{
        if title != nil && author != nil {
            return "\(title!) by \(author!.name)"
        }else if title != nil{
            return title!
        }else{
            return "No title."
        }
    }
    var title:String?
    var author:Person?
}

let author = Person()
author.name = "Suzuki"

let myPost = BlogPost()
myPost.author = author
myPost.title = "Swift"
print(myPost.fullTitle)
