import Foundation

public class DogFeatureRouter {
    lazy var dogDetailRouter: DogDetailRouter = DogDetailRouter()
    lazy var dogsListRouter: DogsListRouter = DogsListRouter()
    
    public init() {
    }
    
    public func getMainScreen() -> UIViewController {
        return dogsListRouter.getDogListViewController()
    }
    
}
