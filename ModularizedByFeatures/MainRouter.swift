import Foundation


class MainRouter {
    lazy var homeFeatureRouter = HomeFeatureRouter()
    lazy var catFeatureRouter = CatFeatureRouter()
    lazy var dogFeatureRouter = DogFeatureRouter()
}