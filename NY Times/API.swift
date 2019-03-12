//
//  API.swift
//  NY Times
//
//  Created by sourav on 12/03/19.
//  Copyright © 2019 sourav. All rights reserved.
//
import UIKit
import Alamofire
import AlamofireObjectMapper

fileprivate let newsURL = "https://api.nytimes.com/svc/mostpopular/v2/emailed/7.json?api-key=YMzb7xwGd4AhwBNoj5yDh4Xbf6cRJ8eC"

class API: NSObject {
    static let shared = API()
}
extension API{
    
    func getNewsList(success: @escaping([NewsModel])->Void,failure: @escaping(String)->Void){
    
        Alamofire.request(newsURL,method: .get, encoding: JSONEncoding.default, headers: nil).responseArray(keyPath:"results") { (response:DataResponse<[NewsModel]>) -> Void in
            guard response.result.isSuccess else {
                failure((response.result.error?.localizedDescription)!)
                return
            }
            success(response.value!)
        }
    }
}
