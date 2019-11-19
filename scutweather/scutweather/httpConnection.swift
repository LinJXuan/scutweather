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
    
    var WT:[weather] = [weather]()
    
    
    init() { }
    
    func seacherWeather(city: String) -> [weather]{
        let url="http://v.juhe.cn/weather/index?format=2&cityname="+city+"&key=ce95fa5af917c93e2d01042d50db8ee7"
        let newUrl = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        AF.request(newUrl, method: .get).responseJSON { (response) -> Void in
                        switch response.result {
                        case .success(let json):
                            
                            let dict = json as! Dictionary<String,AnyObject>
                            let result = dict["result"] as! Dictionary<String,AnyObject>
                            let future = result["future"] as! NSArray
                            
                            for i in 0...3{
                                let fu = future[i] as! Dictionary<String,AnyObject>
                                let temperature = fu["temperature"] as! String
                                let weath = fu["weather"] as! String
                                //print("temperature=:","\(temperature)","weather=:","\(weath)")
                                self.WT.append(weather(temperature: temperature, weather: weath))
                            }
                        case .failure(let error):
                            print("\(error)")
                        }
                   }
        return WT
    }
    
}
