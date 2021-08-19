//
//  ProductsTableViewCell.swift
//  PKT_FindU
//
//  Created by PKT on 2021/08/11.
//

import UIKit
import Foundation

class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var mainHashTag: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var products: Product {
        didSet {
            category.text = products.category
            collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension ProductsTableViewCell: UICollisionBehaviorDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInsection section: Int) -> Int {
        return products?.products?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath) as? ProductCollectionViewCell else {
            return ProductCollectionViewCell()
        }
        return cell
    }
}
