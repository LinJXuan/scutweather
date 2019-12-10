//
//  WTListViewController.swift
//  scutweather
//
//  Created by Apple on 2019/11/26.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import UIKit

class WTListViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var city: UITextField!
    var WTforEdit: List?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.city.text = WTforEdit?.city
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "saveToList"{
            print("save")
            WTforEdit=List(city: self.city.text!)
            QuanBian.acityName=self.city.text!
            print(QuanBian.acityName)
        }
        if segue.identifier == "cancelToList"{
            print("cancel")
        }
        
        
    }
    

}
