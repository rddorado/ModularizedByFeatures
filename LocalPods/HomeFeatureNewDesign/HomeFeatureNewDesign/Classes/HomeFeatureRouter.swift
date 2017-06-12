import UIKit


public protocol HomeFeatureRouterDelegate: class {
    func showDogsList()
    func showCatsList()
}

public class HomeFeatureRouter {
    lazy var homeViewController: HomeViewController = HomeViewController(router: self)
    weak var delegate: HomeFeatureRouterDelegate?
  
    public init(delegate: HomeFeatureRouterDelegate? = nil){
        self.delegate = delegate
    }
    
    public func getMainScreen() -> UIViewController {
        return homeViewController
    }
    
    @objc func showDogsList() {
        delegate?.showDogsList()
    }
    
    @objc func showCatsList() {
        delegate?.showCatsList()
    }
}
