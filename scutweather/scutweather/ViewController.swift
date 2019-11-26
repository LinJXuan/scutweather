//
//  ViewController.swift
//  scutweather
//
//  Created by 最后一排的 on 2019/11/5.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tem4: UILabel!
    @IBOutlet weak var tem3: UILabel!
    @IBOutlet weak var tem2: UILabel!
    @IBOutlet weak var tem1: UILabel!
    @IBOutlet weak var day4: UILabel!
    @IBOutlet weak var day3: UILabel!
    @IBOutlet weak var day2: UILabel!
    @IBOutlet weak var day1: UILabel!
    @IBOutlet weak var mainpic: UIImageView!
    
    
    
    var wt1: weather?
    var wt2: weather?
    var wt3: weather?
    var wt4: weather?
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
   
        
        day1.text="多云"
        day2.text="晴天"
        day3.text="晴天"
        day4.text="晴天"
        if day1.text=="晴天" {
        let path=Bundle.main.path(forResource: "sun", ofType: "jpg")
        let fileimage=UIImage(contentsOfFile: path!)
        mainpic.image=fileimage
        }
        else if day1.text=="多云" {
            let path=Bundle.main.path(forResource: "cloud", ofType: "jpg")
            let fileimage=UIImage(contentsOfFile: path!)
            mainpic.image=fileimage
        }
         else if day1.text=="雷暴雨" {
            let path=Bundle.main.path(forResource: "lighting", ofType: "jpg")
            let fileimage=UIImage(contentsOfFile: path!)
            mainpic.image=fileimage
        }
        else if day1.text=="小雨" {
            let path=Bundle.main.path(forResource: "rain", ofType: "jpg")
            let fileimage=UIImage(contentsOfFile: path!)
            mainpic.image=fileimage
        }
    }
}
