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
    @IBOutlet weak var mainpic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("yes")
        let http=httpConnection()
        http.seacherWeather(city: "广州")
        
        let path=Bundle.main.path(forResource: "sun", ofType: "jpg")
        let fileimage=UIImage(contentsOfFile: path!)
        mainpic.image=fileimage
        let reSize = CGSize(width: 750, height: 1050)
        mainpic.image = mainpic.image?.reSizeImage(reSize: reSize)
    }
}
