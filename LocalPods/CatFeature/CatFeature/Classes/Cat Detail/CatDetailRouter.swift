import UIKit

@objc class CatDetailRouter: NSObject {
    weak var catDetailViewController: CatDetailViewController?
    let presentModally = false
    
    func showCatDetailViewController(from sourceViewController: UIViewController, cats: [Cat], selectedIndex: Int) {
        
        let vc = CatDetailViewController(cats: cats, selectedIndex: selectedIndex, router: self)
        let buttonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(CatDetailRouter.exitCatDetailViewControler))
        vc.navigationItem.leftBarButtonItem = buttonItem
        let navigation = UINavigationController(rootViewController:vc)
        
        if presentModally {
            sourceViewController.present(navigation, animated: true, completion: nil)
        } else {
            sourceViewController.navigationController?.pushViewController(vc, animated: true)
            
        }
        catDetailViewController = vc
    }
    
    @objc func exitCatDetailViewControler() {
        if presentModally {
            catDetailViewController?.dismiss(animated: true, completion: nil)
        } else {
            catDetailViewController?.navigationController?.popViewController(animated: true)
        }
    }
}

