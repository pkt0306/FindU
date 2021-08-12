//
//  SimpleDetailViewController.swift
//  SampleMain
//
//  Created by Abraham Park on 2021/08/12.
//

import UIKit
import Foundation

class SimpleDetailViewController: UIViewController {
    var simpleInfo: SimpleModel!
    
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTel: UILabel!
    @IBOutlet weak var labelWorkingTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewImage.image = UIImage(named: simpleInfo.thumbNail)
        labelName.text = simpleInfo.name
        labelTel.text = simpleInfo.tel
        labelWorkingTime.text = simpleInfo.time
    }
}
