//
//  MainDataManager.swift
//  ios
//
//  Created by Jerry Jung on 13/08/2019.
//  Copyright © 2019 Jerry Jung. All rights reserved.
//
import Alamofire
import AlamofireObjectMapper
import AlamofireImage
import Kingfisher


class LocationsDataManager {


    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    //func getRestaurantsList(_ findingGoodRestaurantViewController: FindingGoodRestaurantViewController, _ kind: [String?], _ category: [String?], _ price: [String?], _ parking: [String?], _ radius: [String?], _ order: [String?]){
    
    func getLocationsList(_ searchViewController: SearchViewController) {
///restaurants?type=main&lat=\(latitude)&lng=\(longitude)&kind=\(kind)&category=\(category)&price=\(price)&parking=\(parking)&radius=\(radius)&order=\(order)"

        Alamofire
            .request("\(self.appDelegate.baseUrl)/place?sort=review", method: .get)
            .validate()
            .responseObject(completionHandler: { (response: DataResponse<LocationResponse>) in
                switch response.result {
                case .success(let locationsResponse):
                    if (locationsResponse.code == 100) {
                        searchViewController.getPlaceByReview(response: locationsResponse.result)
//                        for index in 0..<locationsResponse.result.count{
//
//
//
//                           let FirstEventURL = URL(string: locationsResponse.result[index].thumbnail)
//
//
//                            searchViewController.locationsThumbnail.insert(FirstEventURL!, at: index)
//
//
//
//                            searchViewController.locationsAddress.insert(locationsResponse.result[index].address, at: index)
//                            searchViewController.locationsPlaceName.text = String(locationsResponse.result[index].title)
//                            searchViewController.locationsReviewCnt.text = locationsResponse.result[index].title
//
                           
                            
                            
                           
                        
                        
//                        searchViewController.setRestaurantList()
                        
                       
                        
                    }
                    
                    else {
                      
                        print("locationsResponse:\( locationsResponse.message)")
                    }
                case .failure:
                     print("서버와의 연결이 원활하지 않습니다.")
                }
            })
    }
    
    
}
