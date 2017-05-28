import Foundation
import Context

protocol CatsListViewPort: class {
    func catsFetched(_ cats: [Cat])
    func didSelectCatImage(selectedIndex: Int)
}

class CatsListAdapter {
    
    weak var viewPort: CatsListViewPort?
    var context: CatFeatureContextProtocol
    
    init(viewPort: CatsListViewPort, context: CatFeatureContextProtocol = CatFeatureContextFactory()) {
        self.viewPort = viewPort
        self.context = context
    }
    
    func fetchCats() {
        let names = context.catsListService().getCatsList()
        var cats = [Cat]()
        for name in names {
            cats.append(Cat(imageName: name))
        }
        
        viewPort?.catsFetched(cats)
    }
    
    func handleTapImage(selectedIndex: Int) {
        viewPort?.didSelectCatImage(selectedIndex: selectedIndex)
    }
}
