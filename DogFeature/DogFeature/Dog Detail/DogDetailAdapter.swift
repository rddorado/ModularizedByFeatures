import Foundation

protocol DogDetailViewPort: class {
    func showDogImage(index: Int)
}

class DogDetailAdapter {
    weak var viewPort: DogDetailViewPort?
    var dogs = [Dog]()
    var selectedIndex:Int
    var context: DogFeatureContextProtocol
    
    init(dogs:[Dog], selectedIndex: Int, viewPort: DogDetailViewPort, context: DogFeatureContextProtocol = DogFeatureContextFactory()) {
        self.dogs = dogs
        self.selectedIndex = selectedIndex
        self.viewPort = viewPort
        self.context = context
    }
    
    func handleTapImage() {
        if dogs.count > 0 {
            selectedIndex += 1
            if selectedIndex >= dogs.count {
                selectedIndex = 0
            }
        }
        print("Selected this Dog: \(context.dogDetailService().getDogDetail(name: dogs[selectedIndex].imageName))")
        viewPort?.showDogImage(index: selectedIndex)
    }
}
