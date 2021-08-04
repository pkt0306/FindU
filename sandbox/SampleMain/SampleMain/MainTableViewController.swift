//
//  MainTableViewController.swift
//  SampleMain
//
//  Created by Abraham Park on 2021/08/04.
//

import UIKit
import Foundation

class MainTableViewController: UITableViewController {
    
    @IBOutlet var viewGreen: UIView!
    @IBOutlet weak var viewScroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewScroll.addSubview(viewGreen)
        viewScroll.contentSize = .init(width: 1000, height: 128)
    }
}
