import UIKit

class DogsListRouter{
    
    lazy var dogDetailRouter = DogDetailRouter()
    weak var dogsListViewController: DogsListViewController?
    
    func getDogListViewController() -> UIViewController {
        let dogsListViewController = DogsListViewController(router: self)
        let navigation = UINavigationController(rootViewController:dogsListViewController)
        return navigation
    }
    
    func showDogDetailViewController(from sourceViewController: UIViewController, dogs: [Dog], selectedIndex: Int) {
        dogDetailRouter.showDogDetailViewController(from: sourceViewController, dogs: dogs, selectedIndex: selectedIndex)
    }
}
