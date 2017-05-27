import UIKit

class CatsListRouter{
    
    lazy var catDetailRouter = CatDetailRouter()
    lazy var catsListViewController: UINavigationController = {
        let vc = CatsListViewController(router: self)
        let navigation = UINavigationController(rootViewController:vc)
        return navigation
    }()
    
    func showCatDetailViewController(from sourceViewController: UIViewController, cats: [Cat], selectedIndex: Int) {
        catDetailRouter.showCatDetailViewController(from: sourceViewController, cats: cats, selectedIndex: selectedIndex)
    }
}
