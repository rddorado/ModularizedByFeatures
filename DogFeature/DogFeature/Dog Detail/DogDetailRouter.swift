
import UIKit

@objc class DogDetailRouter: NSObject {
    var dogDetailViewController: DogDetailViewController?
  
    func showDogDetailViewController(from sourceViewController: UIViewController, dogs: [Dog], selectedIndex: Int) {
        dogDetailViewController = DogDetailViewController(dogs: dogs, selectedIndex: selectedIndex, router: self)

        let navigation = UINavigationController(rootViewController:dogDetailViewController!)
        let buttonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(DogDetailRouter.exitDogDetailViewControler))
        dogDetailViewController?.navigationItem.leftBarButtonItem = buttonItem
    
        sourceViewController.present(navigation, animated: true, completion: nil)
    }
    
    @objc func exitDogDetailViewControler() {
       dogDetailViewController?.dismiss(animated: true, completion: nil)
    }
}
