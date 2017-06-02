import UIKit

@objc class CatDetailRouter: NSObject {
    var catDetailViewController: CatDetailViewController?
    
    func showCatDetailViewController(from sourceViewController: UIViewController, cats: [Cat], selectedIndex: Int) {
        catDetailViewController = CatDetailViewController(cats: cats, selectedIndex: selectedIndex, router: self)
//        
//        let navigation = UINavigationController(rootViewController:catDetailViewController!)
//        let buttonItem = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(CatDetailRouter.exitCatDetailViewControler))
//        catDetailViewController?.navigationItem.leftBarButtonItem = buttonItem
//        
 //       sourceViewController.present(navigation, animated: true, completion: nil)
        
        sourceViewController.navigationController?.pushViewController(catDetailViewController!, animated: true)
    }
    
    @objc func exitCatDetailViewControler() {
       // catDetailViewController?.dismiss(animated: true, completion: nil)
        catDetailViewController?.navigationController?.popViewController(animated: true)
        catDetailViewController = nil
    }
}

