//
//  TablViewController.swift
//  News
//
//  Created by Дамир Нургалиев on 30.03.2024.
//

import UIKit

class TablViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
        
        }
    
   
    @objc func countTime(){
        let date = Date()
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = "HH:mm:ss"
        let currentTime = dateFormat.string(from: date)
        
        arrayNews.insert(arrayNews[2], at: 0)
        time.insert(currentTime, at: 0)
        
        tableView.reloadData()
        
        
    }
    
    
    
    
    
    var arrayNews = [News(country: "Kazakhstan", city: "Astana", image: "astana"),
                     News(country: "Kazakhstan", city: "Almaty", image: "almaty"),
                     News(country: "Kazakhstan", city: "Aktau", image: "aktau")]

    
    var time = ["time","time","time"]
    
    
    
    

   
    
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayNews.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "News", for: indexPath)

        let labelCountry = cell.viewWithTag(2001) as! UILabel
        labelCountry.text = arrayNews[indexPath.row].country
        
        let labelCity = cell.viewWithTag(2002) as! UILabel
        labelCity.text = arrayNews[indexPath.row].city
        
        let imageCity = cell.viewWithTag(1003) as! UIImageView
        imageCity.image = UIImage(named: arrayNews[indexPath.row].image)
        
        let labelData = cell.viewWithTag(3001) as! UILabel
        labelData.text = time[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
