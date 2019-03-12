//
//  CountryResponseModel.swift
//  Herbalife
//
//  Created by Sourav on 26/12/18.
//  Copyright © 2018 Herbalife. All rights reserved.
//

import ObjectMapper

struct NewsModel: Mappable {
    
    init?(map: Map) {}
    var description: String = ""
    var author: String = ""
    var date : String = ""

    
    mutating func mapping(map: Map) {
        description <- map["abstract"]
        author <- map["byline"]
        date <- map["published_date"]

    }
    
}
