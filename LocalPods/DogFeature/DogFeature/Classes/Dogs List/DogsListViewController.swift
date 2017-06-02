//
//  DogsListViewController.swift
//  Viper-Sample-Project
//
//  Created by Ronaldo II Dorado on 5/5/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import UIKit
import SnapKit

class DogsListViewController: UIViewController, DogsListViewPort, UICollectionViewDataSource, UICollectionViewDelegate {
    var flowLayout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    var collectionView: UICollectionView
    var dogs: [Dog] = []
    lazy var adapter:DogsListAdapter = DogsListAdapter(viewPort: self)
    weak var router: DogsListRouter?
    
    init(router: DogsListRouter) {
        self.router = router
        
        flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width/2-10, height: UIScreen.main.bounds.width/2-10)
        flowLayout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: flowLayout)
        collectionView.register(UICollectionViewCell.classForKeyedArchiver(), forCellWithReuseIdentifier: "reuseIdentifier")
        collectionView.backgroundColor  = .white
        
        super.init(nibName: nil, bundle: nil)
        collectionView.dataSource = self
        collectionView.delegate = self
        title = "Dogs"
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
        adapter.fetchDogs()
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "reuseIdentifier",
                                           for: indexPath)
        
        
        let podBundle = Bundle(for: DogFeatureRouter.self)
        let bundleURL = podBundle.url(forResource: "DogFeature", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)
        let image = UIImage(named:"\(dogs[indexPath.row].imageName).jpg", in: bundle, compatibleWith: nil)
        let imageView = UIImageView(image:image)
        
            //UIImageView(image: UIImage(named: dogs[indexPath.row].imageName))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        cell.backgroundView = imageView
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        adapter.handleTapImage(selectedIndex: indexPath.row)
    }

    
    func dogsFetched(_ dogs: [Dog]) {
        self.dogs.removeAll()
        self.dogs.append(contentsOf: dogs)
        
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
    
    func didSelectDogImage(selectedIndex: Int) {
        router?.showDogDetailViewController(from: self, dogs: dogs, selectedIndex: selectedIndex)
    }
}
