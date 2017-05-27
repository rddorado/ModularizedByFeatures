import UIKit

class HomeFeatureRouter {
    lazy var homeViewController:HomeViewController = HomeViewController(router: self)
  
    public init(){
        
    }
    
    public func getMainScreen() -> UIViewController {
        return homeViewController
    }
    
    @objc func showDogsList() {
        AppDelegate.switchTab(.dogs)
    }
    
    @objc func showCatsList() {
        AppDelegate.switchTab(.cats)
    }
}
