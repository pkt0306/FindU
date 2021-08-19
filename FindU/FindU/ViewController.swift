//
//  ViewController.swift
//  PKT_FindU
//
//  Created by PKT on 2021/08/11.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    
    var productData: ProductModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadJson()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func loadJson() {
        if let path = Bundle.main.path(forResource: "Restaurant", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                let jsonData = try JSONSerialization.data(withJSONObject: jsonResult, options: .prettyPrinted)
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                productData = try jsonDecoder.decode(ProductModel.self, from: jsonData)
            } catch {
                //handle error
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productData?.response?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsTableViweCell") as? ProductsTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}
