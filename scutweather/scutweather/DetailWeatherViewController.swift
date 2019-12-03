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
    
    @IBOutlet weak var cityLifeData: UILabel!
    
    @IBOutlet weak var scene: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var cityname = ""
        
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
        
        let path6 = Bundle.main.path(forResource: "scene", ofType: "jpg")
        let fileimage6 = UIImage(contentsOfFile: path6!)
        scene.image=fileimage6
        
        let wearingClick = UITapGestureRecognizer(target: self, action: #selector(wearingAction))
        wearing.addGestureRecognizer(wearingClick)
        wearing.isUserInteractionEnabled = true
        
        let raysClick = UITapGestureRecognizer(target: self, action: #selector(raysAction))
        rays.addGestureRecognizer(raysClick)
        rays.isUserInteractionEnabled = true
        
        let sportsClick = UITapGestureRecognizer(target: self, action: #selector(sportsAction))
        sports.addGestureRecognizer(sportsClick)
        sports.isUserInteractionEnabled = true
        
        let washingClick = UITapGestureRecognizer(target: self, action: #selector(washingAction))
        washing.addGestureRecognizer(washingClick)
        washing.isUserInteractionEnabled = true
        
        let umbrellaClick = UITapGestureRecognizer(target: self, action: #selector(umbrellaAction))
        umbrella.addGestureRecognizer(umbrellaClick)
        umbrella.isUserInteractionEnabled = true
        
//        let http=httpConnection()
//        var index:index
//        index = http.seacherIndex(city: "广州")
        let text = cityname + "生活指数预报"
        cityLifeData.text = text
        
    }
    
    @objc func wearingAction() -> Void{
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let destination = sb.instantiateViewController(withIdentifier: "wearingview") as! wearingViewController
        self.present(destination,animated: true,completion: nil)
    }
    
    @objc func raysAction() -> Void{
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let destination = sb.instantiateViewController(withIdentifier: "raysview") as! RaysViewController
        self.present(destination,animated: true,completion: nil)
    }
    @objc func sportsAction() -> Void{
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let destination = sb.instantiateViewController(withIdentifier: "sportsview") as! SportsViewController
        self.present(destination,animated: true,completion: nil)
    }
    @objc func washingAction() -> Void{
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let destination = sb.instantiateViewController(withIdentifier: "washingview") as! WashingViewController
        self.present(destination,animated: true,completion: nil)
    }
    @objc func umbrellaAction() -> Void{
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let destination = sb.instantiateViewController(withIdentifier: "umbrellaview") as! UmbrellaViewController
        self.present(destination,animated: true,completion: nil)
    }

}
