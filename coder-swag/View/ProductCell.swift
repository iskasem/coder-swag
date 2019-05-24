//
//  ProductCell.swift
//  coder-swag
//
//  Created by Islam Kasem on 22/05/2019.
//  Copyright © 2019 Islam Kasem. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet  weak var productImage :UIImageView!
    @IBOutlet weak var productTitle :UILabel!
    @IBOutlet weak var productPrice :UILabel!
    
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
