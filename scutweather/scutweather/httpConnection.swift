//
//  httpConnection.swift
//  scutweather
//
//  Created by 最后一排的 on 2019/11/12.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class httpConnection{
    var time: String
    //老黄历
    var jsonData: Data?
    init(t: String) {
        self.time=t
    }
    
    func firstMethod(){
        let url = "http://v.juhe.cn/laohuangli/d?date="+time+"&key=9877ecfb28acdd7f9c6dc6c5e1224ad3"
        AF.request(url, method: .get).responseJSON { (response) -> Void in
            switch response.result {
            case .success(let json):
                print("json=:","\(json)")
                let dict = json as! Dictionary<String,AnyObject>
                let result = dict["result"] as! Dictionary<String,String>
                let yinli = result["yinli"] as! String
                print("result=:","\(result)")
                print("yinli=:","\(yinli)")
            case .failure(let error):
                print("\(error)")
            }
            
            
        }
    }
}
