import Foundation

public class CatFeatureRouter {
    var catDetailRouter: CatDetailRouter? = CatDetailRouter()
    var catsListRouter: CatsListRouter = CatsListRouter()
    public init() {
        
    }
    
    public func getMainScreen() -> UIViewController {
        return catsListRouter.getCatListViewController()
    }
}
