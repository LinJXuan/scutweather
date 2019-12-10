//
//  QuanBian.swift
//  scutweather
//
//  Created by clement on 2019/12/10.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import Foundation


class QuanBian{
    
    static var acityName: String={
       return "123"
    }()
    init() {
        QuanBian.acityName="广州"
    }
    
    func getName()->String{
        return QuanBian.acityName
    }
    func setName(cityName:String){
        QuanBian.acityName=cityName
        print(QuanBian.acityName)
    }
}
