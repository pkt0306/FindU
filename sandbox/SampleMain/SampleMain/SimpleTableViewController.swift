//
//  SimpleTableViewController.swift
//  SampleMain
//
//  Created by Abraham Park on 2021/08/12.
//

import UIKit
import Foundation

class SimpleTableViewController: UITableViewController {
    let arrayList = arraySimples
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = arrayList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        
        cell.textLabel?.text = info.name
        cell.detailTextLabel?.text = info.time
        cell.imageView?.image = UIImage(named: info.thumbNail)
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tableView.indexPathForSelectedRow!
//        segue.source
        let vcDest = segue.destination as! SimpleDetailViewController
        
        vcDest.simpleInfo = arrayList[indexPath.row]
//        segue.identifier
    }
}
