//
//  WTTableViewController.swift
//  scutweather
//
//  Created by Apple on 2019/11/26.
//  Copyright © 2019 scut_flyc. All rights reserved.
//

import UIKit

class WTTableViewController: UITableViewController {
    
    var cityList :[List] = [List]()
    
    func initcityList(){
        
        if loadcityFile()==nil{
            cityList.append(List(city: "北京"))
            cityList.append(List(city: "佛山"))
        }else{
            cityList=loadcityFile()!
        }
        
    }
    func saveWTList(){
        let success = NSKeyedArchiver.archiveRootObject(cityList, toFile: List.ArchiveURL.path)
        if !success{
            print("failed!--")
        }
        
    }
    
    func loadcityFile()->[List]?{
        return (NSKeyedUnarchiver.unarchiveObject(withFile: List.ArchiveURL.path) as? [List])
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initcityList()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cityList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "city", for: indexPath)
        cell.textLabel?.text = cityList[indexPath.row].city
        // Configure the cell...

        return cell
    }
    

    @IBAction func cancelToList(segue: UIStoryboardSegue){
        
    }
    
    @IBAction func saveToList(segue: UIStoryboardSegue){
        if let addWTVC = segue.source as? WTListViewController{
            if let addWT = addWTVC.WTforEdit{
                if let selectedIndexPath = tableView.indexPathForSelectedRow{
                    //更新已经存在的表格
                    cityList[(selectedIndexPath as NSIndexPath).row] = addWT
                    tableView.reloadRows(at: [selectedIndexPath], with: .none)
                }else{
                    cityList.append(addWT)
                    let newIndexPath = IndexPath(row: cityList.count-1, section: 0)
                    tableView.insertRows(at: [newIndexPath], with: .automatic)
                }
            }
        }
        saveWTList()
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            cityList.remove(at: indexPath.row)
            saveWTList()
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
   

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier=="showDetail"{
            let descriptionVC = segue.destination as! WTListViewController
            if let selectedCell = sender as? UITableViewCell{
                let indexPath = tableView.indexPath(for: selectedCell)!
                let selectedCity = cityList[(indexPath as NSIndexPath).row]
                descriptionVC.WTforEdit = selectedCity
            }
        }else if segue.identifier=="addList"{
            print("addList")
            
        }
    }
    

}
