//
//  EventResponse.swift
//  ios
//
//  Created by 조예은 on 2020/05/02.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import ObjectMapper

struct LocationResponse {
    var code: Int!
    var isSuccess: Bool!
    var result: [LocationMain]!
    var message: String!
    //var tutorials: [Tutorial?]!
}


extension LocationResponse: Mappable {
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        code <- map["code"]
        isSuccess <- map["isSuccess"]
        result <- map["result"]
        message <- map["message"]

    }
    
}


struct LocationMain {
  
    var placeNo: Int!
    var placeName: String!
    var address: String!
    var thumbnail: String!
    var reviewCnt: String!



}

extension LocationMain: Mappable {

    init?(map: Map) {
    }

    mutating func mapping(map: Map) {
        placeNo <- map["placeNo"]
        placeName <- map["placeName"]
        address <- map["address"]
        thumbnail <- map["thumbnail"]
        reviewCnt <- map["reviewCnt"]


    }

}

