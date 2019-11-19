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
        print("yes")
        let http=httpConnection()
        http.seacherWeather(city: "广州")
       
        // Do any additional setup after loading the view.
    }
    
    

}

