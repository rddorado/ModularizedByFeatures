import Foundation

protocol DogsListViewPort: class {
    func dogsFetched(_ dogs: [Dog])
    func didSelectDogImage(selectedIndex: Int)
}

class DogsListAdapter {
    
    weak var viewPort: DogsListViewPort?
    var context: DogFeatureContextProtocol
    
    init(viewPort: DogsListViewPort, context: DogFeatureContextProtocol = DogFeatureContextFactory()) {
        self.viewPort = viewPort
        self.context = context
    }
    
    func fetchDogs() {
        let names = context.dogsListService().getDogsList()
        var dogs = [Dog]()
        for name in names {
            dogs.append(Dog(imageName: name))
        }

        viewPort?.dogsFetched(dogs)
    }
    
    func handleTapImage(selectedIndex: Int) {
        viewPort?.didSelectDogImage(selectedIndex: selectedIndex)
    }
}
