import Foundation
import Context

protocol CatDetailViewPort: class {
    func showCatImage(index: Int)
}

class CatDetailAdapter {
    weak var viewPort: CatDetailViewPort?
    var cats = [Cat]()
    var selectedIndex:Int
    var context: ContextProtocol
    
    init(cats:[Cat], selectedIndex: Int, viewPort: CatDetailViewPort, context: ContextProtocol = ContextFactory()) {
        self.cats = cats
        self.selectedIndex = selectedIndex
        self.viewPort = viewPort
        self.context = context
    }
    
    func handleTapImage() {
        if cats.count > 0 {
            selectedIndex += 1
            if selectedIndex >= cats.count {
                selectedIndex = 0
            }
        }
        print("Selected this Cat: \(context.catDetailService().getCatDetail(name: cats[selectedIndex].imageName))")
        viewPort?.showCatImage(index: selectedIndex)
    }
}
