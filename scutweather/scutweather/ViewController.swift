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
    
    @IBAction func button(_ sender: Any) {
        
    }
    
    
    
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
//        if day1.text=="晴天" {
//        let path=Bundle.main.path(forResource: "sun", ofType: "jpg")
//        let fileimage=UIImage(contentsOfFile: path!)
//        mainpic.image=fileimage
//        }
//        else if day1.text=="多云" {
//            let path=Bundle.main.path(forResource: "cloud", ofType: "jpg")
//            let fileimage=UIImage(contentsOfFile: path!)
//            mainpic.image=fileimage
//        }
//         else if day1.text=="雷暴雨" {
//            let path=Bundle.main.path(forResource: "lighting", ofType: "jpg")
//            let fileimage=UIImage(contentsOfFile: path!)
//            mainpic.image=fileimage
//        }
//        else if day1.text=="小雨" {
//            let path=Bundle.main.path(forResource: "rain", ofType: "jpg")
//            let fileimage=UIImage(contentsOfFile: path!)
//            mainpic.image=fileimage
//        }
        let http=httpConnection()
        var WT:[weather] = [weather]()
        WT=http.seacherWeather(city: "广州")
        wt1=WT[0]
        wt2=WT[0]
        wt3=WT[0]
        wt4=WT[0]
        day1.text=wt1?.weather
        day2.text=wt2?.weather
        day3.text=wt3?.weather
        day4.text=wt4?.weather
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
        tem1.text=wt1?.temperature
        tem2.text=wt2?.temperature
        tem3.text=wt3?.temperature
        tem4.text=wt4?.temperature
    }
}
