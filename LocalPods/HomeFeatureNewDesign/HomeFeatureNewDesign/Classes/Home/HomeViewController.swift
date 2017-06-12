import UIKit
import SnapKit

class HomeViewController: UIViewController {
 
    weak var router: HomeFeatureRouter?
    let dogButton = UIButton()
    let catButton = UIButton()
    
    init(router: HomeFeatureRouter) {
        self.router = router
        super.init(nibName: nil, bundle: nil)
        self.title = "Home"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        buildView()
        buildLayout()
    }
    
    private func buildView() {
        view.backgroundColor = .green
        makeCatButton()
        makeDogButton()
    }
    
    private func buildLayout() {
        catButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(50)
            make.height.equalTo(50)
        }
        
        dogButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().inset(50)
            make.height.equalTo(50)
        }
    }
    
    private func makeDogButton() {
        view.addSubview(dogButton)
        dogButton.setTitle("Show Dogs", for: .normal)
        dogButton.setTitleColor(.blue, for: .normal)
        dogButton.addTarget(router, action: #selector(HomeFeatureRouter.showDogsList), for: .touchUpInside)
    }
    
    private func makeCatButton() {
        view.addSubview(catButton)
        catButton.setTitle("Show Cats", for: .normal)
        catButton.setTitleColor(.blue, for: .normal)
        catButton.addTarget(router, action: #selector(HomeFeatureRouter.showCatsList), for: .touchUpInside)
    }

}
