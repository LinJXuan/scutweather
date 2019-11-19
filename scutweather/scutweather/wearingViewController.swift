//
//  wearingViewController.swift
//  scutweather
//
//  Created by Apple on 2019/11/12.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import UIKit

class wearingViewController: UIViewController {

    @IBOutlet weak var backbutton: UIBarButtonItem!
    @IBOutlet weak var info: UILabel!
    let t="this is wearing info"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        info.text = t
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
