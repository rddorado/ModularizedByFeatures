import UIKit

class HomeFeatureRouter {
    lazy var homeViewController:HomeViewController = HomeViewController(router: self)
  
    init(){
        
    }
    
    @objc func showDogsList() {
        AppDelegate.switchTab(.dogs)
    }
    
    @objc func showCatsList() {
        AppDelegate.switchTab(.cats)
    }
}
