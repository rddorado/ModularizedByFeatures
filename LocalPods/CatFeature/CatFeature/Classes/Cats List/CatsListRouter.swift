import UIKit

class CatsListRouter{
    
    lazy var catDetailRouter = CatDetailRouter()
    weak var catsListViewController: CatsListViewController?
    
    func getCatListViewController() -> UIViewController {
        let catsListViewController = CatsListViewController(router: self)
        let navigation = UINavigationController(rootViewController:catsListViewController)
        return navigation
    }
    
    func showCatDetailViewController(from sourceViewController: UIViewController, cats: [Cat], selectedIndex: Int) {
        catDetailRouter.showCatDetailViewController(from: sourceViewController, cats: cats, selectedIndex: selectedIndex)
    }
}
