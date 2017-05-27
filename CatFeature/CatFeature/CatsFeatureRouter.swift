import Foundation

public class CatFeatureRouter {
    lazy var catDetailRouter: CatDetailRouter = CatDetailRouter()
    lazy var catsListRouter: CatsListRouter = CatsListRouter()
    public init() {
        
    }
    
    public func getMainScreen() -> UIViewController {
        return catsListRouter.catsListViewController
    }
}
