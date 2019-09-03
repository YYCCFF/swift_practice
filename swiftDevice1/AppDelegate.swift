
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let storyboard:UIStoryboard = self.grabStoryBoard()
        if let window = window{
            window.rootViewController = storyboard.instantiateInitialViewController() as UIViewController?
        }
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    func grabStoryBoard() -> UIStoryboard{
        
        var storyboard = UIStoryboard()
        //高さで分岐させる
        //今の画面の高さを取得する
        var height = UIScreen.main.bounds.size.height
        
        //iPhone7 or iPhone8
        switch height {
          case 896:
            storyboard = UIStoryboard(name: "Main", bundle: nil)
            return storyboard
          case 736:
            storyboard = UIStoryboard(name: "iPhone8Plus", bundle: nil)
            return storyboard
          case 812:
            storyboard = UIStoryboard(name: "iPhonexs", bundle: nil)
            return storyboard
          case 667:
            storyboard = UIStoryboard(name: "iPhone8", bundle: nil)
            return storyboard
          case 480:
            storyboard = UIStoryboard(name: "iPhone4", bundle: nil)
            return storyboard
        //iPhone5,5s,5c,SE
          default:
            storyboard = UIStoryboard(name: "iPhonese", bundle: nil)
            return storyboard
            }
    }
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

