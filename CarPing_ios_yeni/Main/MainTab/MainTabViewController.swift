//
//  MainTabViewController.swift
//  CarPing_ios_yeni
//
//  Created by 조예은 on 2020/05/22.
//  Copyright © 2020 eunjoyer. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    
    
  override func viewDidLoad() {
    super.viewDidLoad()

    let Home = UINavigationController(rootViewController: HomeViewController())
    Home.tabBarItem = UITabBarItem(title: "홈", image: UIImage(named: "square_gray.png"), selectedImage: UIImage(named: "square_black.png"))
    Home.tabBarItem.image?.withAlignmentRectInsets(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))//Give your left alignment number
    Home.tabBarItem.imageInsets = UIEdgeInsets(top: 15, left: 2, bottom: 0, right: 0)
    Home.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 8)
    Home.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15.0)], for: .normal)
    

    let Search = UINavigationController(rootViewController: SearchViewController())
    Search.tabBarItem = UITabBarItem(title: "검색", image: UIImage(named: "square_gray.png"), selectedImage: UIImage(named: "square_black.png"))
    Search.tabBarItem.image?.withAlignmentRectInsets(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))//Give your left alignment number
    Search.tabBarItem.imageInsets = UIEdgeInsets(top: 15, left: 2, bottom: 0, right: 0)
    Search.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 8)
    Search.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15.0)], for: .normal)
    


    let Community = UINavigationController(rootViewController: CommunityViewController())
    Community.tabBarItem = UITabBarItem(title: "커뮤니티", image: UIImage(named: "square_gray.png"), selectedImage: UIImage(named: "square_black.png"))
    Community.tabBarItem.image?.withAlignmentRectInsets(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))//Give your left alignment number
    Community.tabBarItem.imageInsets = UIEdgeInsets(top: 15, left: 2, bottom: 0, right: 0)
    Community.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 8)
    Community.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15.0)], for: .normal)
    
 

    let MyInfo = UINavigationController.init(rootViewController: MyInfoViewController())
    MyInfo.tabBarItem = UITabBarItem.init(title: "내정보", image: UIImage(named: "square_gray.png"), selectedImage: UIImage(named: "square_black.png"))
    MyInfo.tabBarItem.image?.withAlignmentRectInsets(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))//Give your left alignment number
    MyInfo.tabBarItem.imageInsets = UIEdgeInsets(top: 15, left: 2, bottom: 0, right: 0)
    MyInfo.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 8)
    MyInfo.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15.0)], for: .normal)
    
    


    
    let tabBarList = [Home, Search, Community, MyInfo]

    self.viewControllers = tabBarList
    self.tabBar.tintColor = .black
    UIApplication.shared.statusBarStyle = .lightContent
    
    
    
  }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   
    

}
