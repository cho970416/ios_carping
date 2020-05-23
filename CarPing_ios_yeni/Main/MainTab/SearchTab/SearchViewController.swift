//
//  SearchViewController.swift
//  CarPing_ios_yeni
//
//  Created by 조예은 on 2020/05/22.
//  Copyright © 2020 eunjoyer. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    unowned var locationDataManager: LocationsDataManager {
        get {
            return LocationsDataManager()
        }
    }
    
    var locationsPlaceNo : [Int] = []
        var locationsThumbnail : [URL] = []
    //    var restaurantsStar : [String] = []
        var locationsAddress : [String] = []
        var locationsPlaceName : [String] = []
        var locationsReviewCnt : [String] = []
       
    
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
        
        locationsAddress.insert("강원 강릉시 창해로14번길 20-1", at: 0)
        locationsAddress.insert("인천 중구 항동7가", at: 1)
        locationsAddress.insert("부산 기장군 일광면 문동리", at: 2)
        locationsAddress.insert("서울 중랑구 망우로87길 140", at: 3)
        locationsAddress.insert("강원 강릉시 왕산면 안반덕길 428", at: 4)
        locationsAddress.insert("강원 동해시 촛대바위길 6", at: 5)
        
        locationsReviewCnt.insert("리뷰 10", at: 0)
        locationsReviewCnt.insert("리뷰 8", at: 1)
        locationsReviewCnt.insert("리뷰 6", at: 2)
        locationsReviewCnt.insert("리뷰 5", at: 3)
        locationsReviewCnt.insert("리뷰 3", at: 4)
        locationsReviewCnt.insert("리뷰 3", at: 5)


        locationsThumbnail.insert(URL(string: "https://firebasestorage.googleapis.com/v0/b/carping-6a73d.appspot.com/o/1-1.jpg?alt=media&token=1f4109c2-116a-4546-85f1-0c09fbe8440b")!, at: 0)
        locationsThumbnail.insert(URL(string: "https://firebasestorage.googleapis.com/v0/b/carping-6a73d.appspot.com/o/4-1.jpg?alt=media&token=3c4bc254-e3a4-4f89-ab16-aa984a620b38")!, at: 1)
        locationsThumbnail.insert(URL(string: "https://firebasestorage.googleapis.com/v0/b/carping-6a73d.appspot.com/o/3-1.jpg?alt=media&token=064a4ecb-c5ae-40c0-b8d5-428cae116815")!, at: 2)
        locationsThumbnail.insert(URL(string: "https://firebasestorage.googleapis.com/v0/b/carping-6a73d.appspot.com/o/2-1.jpg?alt=media&token=1acb721a-8f2e-460d-955a-326ea45144d5")!, at: 3)
        locationsThumbnail.insert(URL(string: "https://firebasestorage.googleapis.com/v0/b/carping-6a73d.appspot.com/o/5-1.jpg?alt=media&token=faaf3233-64ea-46aa-b3f4-ea13ac505b05")!, at: 4)
         locationsThumbnail.insert(URL(string: "https://firebasestorage.googleapis.com/v0/b/carping-6a73d.appspot.com/o/6-1.jpg?alt=media&token=3c88a409-9aba-4970-9599-b2dd83fd3242")!, at: 5)
        
//        locationDataManager.getLocationsList(self)
    }
    
    
    func getPlaceByReview(response: [LocationMain]){
        for i in 0...response.count {
            self.locationsAddress[i] = response[i].address
            self.locationsThumbnail[i] = URL(string: response[i].thumbnail)!
            self.locationsPlaceName[i] = response[i].placeName
            self.locationsReviewCnt[i] = response[i].reviewCnt
        }
        collectionView.reloadData()
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
        
       
        if(locationsAddress.count==0){
            return cell
        }
                
        cell.locationImg.kf.setImage(with: locationsThumbnail[indexPath.row])
        
        cell.detailLB.text = locationsAddress[indexPath.row]
        
//        cell.titleLB.text = locationsPlaceName[indexPath.row]
        
        cell.reviewLB.text = locationsReviewCnt[indexPath.row]
        
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
