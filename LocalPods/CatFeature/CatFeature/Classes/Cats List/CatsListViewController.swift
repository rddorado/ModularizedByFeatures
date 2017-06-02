import UIKit
import SnapKit

class CatsListViewController: UIViewController, CatsListViewPort, UICollectionViewDataSource, UICollectionViewDelegate {
    var flowLayout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    var collectionView: UICollectionView
    var cats: [Cat] = []
    lazy var adapter:CatsListAdapter = CatsListAdapter(viewPort: self)
    weak var router: CatsListRouter?
    
    init(router: CatsListRouter) {
        self.router = router
        
        flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width/2-10, height: UIScreen.main.bounds.width/2-10)
        flowLayout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout)
        collectionView.register(UICollectionViewCell.classForKeyedArchiver(), forCellWithReuseIdentifier: "reuseIdentifier")
        collectionView.backgroundColor  = .white
        
        super.init(nibName: nil, bundle: nil)
        collectionView.dataSource = self
        collectionView.delegate = self
        title = "Cats"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        adapter.fetchCats()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cats.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseIdentifier",
                                                      for: indexPath)
        
        let podBundle = Bundle(for: CatFeatureRouter.self)
        let bundleURL = podBundle.url(forResource: "CatFeature", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)
        let image = UIImage(named:"\(cats[indexPath.row].imageName).jpg", in: bundle, compatibleWith: nil)
        let imageView = UIImageView(image:image)
        
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        cell.backgroundView = imageView
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        adapter.handleTapImage(selectedIndex: indexPath.row)
    }
    
    
    func catsFetched(_ cats: [Cat]) {
        self.cats.removeAll()
        self.cats.append(contentsOf: cats)
        
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    func didSelectCatImage(selectedIndex: Int) {
        router?.showCatDetailViewController(from: self, cats: cats, selectedIndex: selectedIndex)
    }
}
