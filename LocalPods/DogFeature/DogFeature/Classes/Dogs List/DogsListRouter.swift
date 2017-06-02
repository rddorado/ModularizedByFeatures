import UIKit

class DogsListRouter{
    
    lazy var dogDetailRouter = DogDetailRouter()
    lazy var dogsListViewController: UINavigationController = {
        let vc = DogsListViewController(router: self)
        let navigation = UINavigationController(rootViewController:vc)
        return navigation
    }()
    
    func showDogDetailViewController(from sourceViewController: UIViewController, dogs: [Dog], selectedIndex: Int) {
        dogDetailRouter.showDogDetailViewController(from: sourceViewController, dogs: dogs, selectedIndex: selectedIndex)
    }
}
