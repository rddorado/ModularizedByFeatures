import Foundation
import CatFeature
import DogFeature

class MainRouter {
    lazy var homeFeatureRouter = HomeFeatureRouter()
    lazy var catFeatureRouter = CatFeatureRouter()
    lazy var dogFeatureRouter = DogFeatureRouter()
}
