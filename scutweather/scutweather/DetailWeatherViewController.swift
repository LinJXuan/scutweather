//
//  DetailWeatherViewController.swift
//  scutweather
//
//  Created by Apple on 2019/11/12.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import UIKit

class DetailWeatherViewController: UIViewController {

    @IBOutlet weak var wearing: UIImageView!
    @IBOutlet weak var wearingtext: UILabel!
    
    @IBOutlet weak var rays: UIImageView!
    @IBOutlet weak var raystext: UILabel!
    
    
    @IBOutlet weak var sports: UIImageView!
    @IBOutlet weak var sportstext: UILabel!
    
    @IBOutlet weak var washing: UIImageView!
    @IBOutlet weak var washingtext: UILabel!
    
    @IBOutlet weak var umbrella: UIImageView!
    @IBOutlet weak var umbrellatext: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path1=Bundle.main.path(forResource: "wearing", ofType: "png")
        let fileimage1=UIImage(contentsOfFile: path1!)
        wearing.image=fileimage1
        
        let path2=Bundle.main.path(forResource: "ray", ofType: "png")
        let fileimage2=UIImage(contentsOfFile: path2!)
        rays.image=fileimage2
        
        let path3=Bundle.main.path(forResource: "sports", ofType: "png")
        let fileimage3=UIImage(contentsOfFile: path3!)
        sports.image=fileimage3
        
        let path4=Bundle.main.path(forResource: "washing", ofType: "png")
        let fileimage4=UIImage(contentsOfFile: path4!)
        washing.image=fileimage4
        
        let path5=Bundle.main.path(forResource: "umbrella", ofType: "png")
        let fileimage5=UIImage(contentsOfFile: path5!)
        umbrella.image=fileimage5
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

}
