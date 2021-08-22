//
//  MainPage_ViewController.swift
//  PKT_FindU_2.0
//
//  Created by PKT on 2021/08/22.
//

import UIKit

class MainPage_ViewController: UITableViewController{
    
    let modelRestaurant = RestaurantModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        modelRestaurant.doRead()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.modelRestaurant.restaurants.count
    }
    
    
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let info = self.modelRestaurant.restaurants[indexPath.row]
           
           let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)

        cell.textLabel?.text = info.testName

           return cell
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
