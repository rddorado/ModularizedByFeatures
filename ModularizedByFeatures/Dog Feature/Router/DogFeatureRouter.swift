import Foundation

class DogFeatureRouter {
    lazy var dogDetailRouter: DogDetailRouter = DogDetailRouter()
    lazy var dogsListRouter: DogsListRouter = DogsListRouter()
}
