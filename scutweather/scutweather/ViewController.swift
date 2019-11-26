//
//  ViewController.swift
//  scutweather
//
//  Created by 最后一排的 on 2019/11/5.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //使用说明
//        let http=httpConnection()
//
//        //天气预报
//        var WT:[weather] = [weather]()
//        WT=http.seacherWeather(city: "输入城市")
//        var wt : weather
//        wt=WT[0]
//        print(wt.temperature)
//
//        //指数
//        var index:index
//        index=http.getIndex()
//        print(index.dressing_advice)
//
//        //空气质量
//        var quality:String
//        quality=http.seacherQuality(city: "输入城市")
//        print(quality)
        let path=Bundle.main.path(forResource: "sun", ofType: "jpg")
        let fileimage=UIImage(contentsOfFile: path!)
        mainpic.image=fileimage
        let reSize = CGSize(width: 750, height: 1050)
        mainpic.image = mainpic.image?.reSizeImage(reSize: reSize)
    }
}
