//
//  SearchViewController.swift
//  CarPing_ios_yeni
//
//  Created by 조예은 on 2020/05/22.
//  Copyright © 2020 eunjoyer. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumInteritemSpacing = 1
        flowLayout.minimumLineSpacing = 1
        
        //flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.width / 2)
        flowLayout.itemSize = CGSize(width: UIScreen.main.bounds.width , height: 220)
        self.collectionView.collectionViewLayout = flowLayout
        collectionView.showsHorizontalScrollIndicator = false
        
        //        self.collectionView.isScrollEnabled = false
        //        self.collectionView.isPagingEnabled = false //스크롤 안되게
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        self.setCarpingList()
        // Do any additional setup after loading the view.
    }
    
    func setCarpingList(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "CollectionViewCell")
        
        setupFlowLayout()
        
    }
    
    
    
    
    
    
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
        //        return restaurantsTitle.count
        //캠핑장 갯수로 바꿔야함
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let searchLocationDetailViewController = SearchLocationDetailViewController()
        
        self.navigationController?.pushViewController(searchLocationDetailViewController, animated: true)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {
            
            return UICollectionViewCell()
        }
        
        
        return cell
    }
    
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //
    //      return CGSize(width: 300, height: 170)
    //
    //    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 0
    }
}
