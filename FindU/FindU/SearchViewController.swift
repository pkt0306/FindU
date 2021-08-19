//
//  SearchViewController.swift
//  PKT_FindU
//
//  Created by PKT on 2021/08/11.
//

import UIKit

class ResultsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class SearchViewController: UIViewController , UISearchResultsUpdating{
    
    let searchController = UISearchController(searchResultsController: ResultsVC())

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController

        // Do any additional setup after loading the view.
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        
        print(text)
    }
}
