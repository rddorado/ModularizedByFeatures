
import UIKit

@objc class DogDetailRouter: NSObject {
    
    weak var dogDetailViewController: DogDetailViewController?
  
    func showDogDetailViewController(from sourceViewController: UIViewController, dogs: [Dog], selectedIndex: Int) {
        let vc = DogDetailViewController(dogs: dogs, selectedIndex: selectedIndex, router: self)
        let navigation = UINavigationController(rootViewController:vc)
        let buttonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(DogDetailRouter.exitDogDetailViewControler))
        vc.navigationItem.leftBarButtonItem = buttonItem
    
        sourceViewController.present(navigation, animated: true, completion: nil)
        dogDetailViewController = vc
    }
    
    @objc func exitDogDetailViewControler() {
       dogDetailViewController?.dismiss(animated: true, completion: nil)
    }
}
