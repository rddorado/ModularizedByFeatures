import Foundation
import CatFeature
import DogFeature
import HomeFeature

class MainRouter {
    lazy var homeFeatureRouter:HomeFeatureRouter = HomeFeatureRouter(delegate: self)
    lazy var catFeatureRouter = CatFeatureRouter()
    lazy var dogFeatureRouter = DogFeatureRouter()
}


extension MainRouter: HomeFeatureRouterDelegate {
    func showDogsList() {
        AppDelegate.switchTab(.dogs)
    }
    
    func showCatsList() {
       AppDelegate.switchTab(.cats)
    }
}
