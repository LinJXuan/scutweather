//
//  List.swift
//  scutweather
//
//  Created by Apple on 2019/11/26.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import Foundation
class List: NSObject, NSCoding {
    //the name of city
    var city : String?
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(city,forKey: "cityKey")
        
        //aCoder.encode(adescription, forKey: "descriptionKey")
        //aCoder.encode(foodCategory,forKey: "categoryKey")
    }
    required init?(coder aDecoder: NSCoder) {
        city = aDecoder.decodeObject(forKey: "cityKey") as? String
        
        //adescription=aDecoder.decodeObject(forKey: "descriptionKey") as? String
    }
    
    //获取app文件夹的根目录
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    //在根目录下创建子目录
    static let ArchiveURL=DocumentsDirectory.appendingPathComponent("cityList")
    
    init(city:String){
        self.city=city
        
    }
}
