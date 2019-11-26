//
//  index.swift
//  scutweather
//
//  Created by 最后一排的 on 2019/11/26.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import Foundation
class index{
    
    //穿衣建议
    var dressing_advice : String
    //紫外线强度
    var uv_index : String
    //洗车指数
    var wash_index : String
    //旅游指数
    var travel_index : String
    //晨练指数
    var exercise_index : String
    
    init(dressing_advice: String,uv_index: String,wash_index: String,travel_index: String,exercise_index: String){
        self.dressing_advice=dressing_advice
        self.uv_index=uv_index
        self.wash_index=wash_index
        self.travel_index=travel_index
        self.exercise_index=exercise_index
    }
}
