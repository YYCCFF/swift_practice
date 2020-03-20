import UIKit

//class
class Person{
    var name = "A"
}

class BlogPost{
    var title:String?
    var body = "hey"
    var author:Person?
    var numberOfComments = 0
    
    init(){
        title = "Java"
        author = Person()
    }
    
    convenience init(customTitle:String){
        self.init()
        title = customTitle
    }
    
}

let post = BlogPost(customTitle: "Swift")
print(post)
