import UIKit

enum Tab: Int {
    case home, cats, dogs
    
    func getViewController(with mainRouter: MainRouter) -> UIViewController {
        switch self {
        case .home:
            return mainRouter.homeFeatureRouter.getMainScreen()
        case .cats:
            return mainRouter.catFeatureRouter.getMainScreen()
        case .dogs:
            return mainRouter.dogFeatureRouter.getMainScreen()
        }
    }
}

@UIApplicationMain


class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let mainRouter = MainRouter()
    let tabBarController = UITabBarController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        tabBarController.setViewControllers([Tab.home.getViewController(with: mainRouter),
                                              Tab.cats.getViewController(with: mainRouter),
                                              Tab.dogs.getViewController(with: mainRouter)], animated: true)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }
    
    class func switchTab(_ tab: Tab) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.tabBarController.selectedIndex = tab.rawValue
        }
    }
}

