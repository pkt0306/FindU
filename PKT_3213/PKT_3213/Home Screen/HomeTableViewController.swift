//
//  ViewController.swift
//  PKT_3213
//
//  Created by PKT on 2021/08/25.
//

import UIKit

class HomeTableViewController: UITableViewController {

    let tableViewCellIdentifier = "HomeTableCell"
    let collectionViewCellIdentifier = "HomeCollectionCell"
    
    let tableViewHeaderNibName = "HomeTableViewHeaderView"
    let tableViewHeaderIdentifier = "HomeTableViewHeader"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headerNib = UINib(nibName: tableViewHeaderNibName, bundle: nil)
        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: tableViewHeaderIdentifier)
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCellIdentifier, for: indexPath) as! HomeTableViewCell
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 32
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: tableViewHeaderIdentifier) as! HomeTableViewHeaderView
        headerView.mainHashTagLabel.text = "#XXX"
        return headerView
    }
}

// MARK: - UICollectionViewDataSource

extension HomeTableViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionViewCellIdentifier, for: indexPath) as! HomeCollectionViewCell
        return cell
    }
}

