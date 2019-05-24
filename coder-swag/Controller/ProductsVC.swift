//
//  ProductsVCViewController.swift
//  coder-swag
//
//  Created by Islam Kasem on 24/05/2019.
//  Copyright © 2019 Islam Kasem. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource {

    @IBOutlet weak var productCollection : UICollectionView!

    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    productCollection.dataSource = self
    productCollection.delegate = self
    }
    
    func initProduct(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    
}
