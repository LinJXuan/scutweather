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
    var IND: index
    
    var quality : String
    init() {
        self.quality="0"
        self.IND=index(dressing_advice: "0", uv_index: "0", wash_index: "0", travel_index: "0", exercise_index: "0")
    }
    
    func getIndex()-> index{
        return self.IND
    }
    
    func seacherWeather(city: String) -> [weather]{
        let url="http://v.juhe.cn/weather/index?format=2&cityname="+city+"&key=ce95fa5af917c93e2d01042d50db8ee7"
        let newUrl = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        AF.request(newUrl, method: .get).responseJSON { (response) -> Void in
                        switch response.result {
                        case .success(let json):
                            
                            let dict = json as! Dictionary<String,AnyObject>
                            let result = dict["result"] as! Dictionary<String,AnyObject>
                            let future = result["future"] as! NSArray
                            //获取指数
                            let today = result["today"] as! Dictionary<String,AnyObject>
                            let dressing_advice = today["dressing_advice"] as! String
                            let uv_index = today["uv_index"] as! String
                            let wash_index = today["wash_index"] as! String
                            let travel_index = today["travel_index"] as! String
                            let exercise_index = today["exercise_index"] as! String
                            self.IND = index(dressing_advice: dressing_advice,uv_index: uv_index,wash_index: wash_index,travel_index: travel_index,exercise_index: exercise_index)
                            //获取天气预报
                            for i in 0...3{
                                let fu = future[i] as! Dictionary<String,AnyObject>
                                let temperature = fu["temperature"] as! String
                                let weath = fu["weather"] as! String
                                //print("temperature=:","\(temperature)","weather=:","\(weath)")
                                self.WT.append(weather(temperature: temperature, weather: weath))
                                //print("WT=","\(self.WT)")
                            }
                            
                        case .failure(let error):
                            print("\(error)")
                        }
                   }
        
        while self.WT.isEmpty{
            //print("等待WT的值")
            RunLoop.current.run(mode: RunLoop.Mode.default, before: Date.distantFuture)
        }
        return self.WT
    }
    
    func seacherQuality(city: String) -> String{
        let url="http://web.juhe.cn:8080/environment/air/cityair?city="+city+"&key=17244406c078889f940cbd1ec3829ed7"
        let newUrl = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        AF.request(newUrl, method: .get).responseJSON { (response) -> Void in
            switch response.result {
            case .success(let json):
                
                let dict = json as! Dictionary<String,AnyObject>
                let result = dict["result"] as! Array<AnyObject>
                let city = result[0] as! Dictionary<String,AnyObject>
                let citynow = city["citynow"]
                let q = citynow as! Dictionary<String,String>
                self.quality = q["quality"] as! String
                
             
            case .failure(let error):
                print("\(error)")
            }
        }
        while self.quality == "0"{
            //print("等待quality的值")
            RunLoop.current.run(mode: RunLoop.Mode.default, before: Date.distantFuture)
        }
        return quality
    }
    
}
