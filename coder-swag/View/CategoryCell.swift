//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Islam Kasem on 19/05/2019.
//  Copyright © 2019 Islam Kasem. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell  {
  
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryLbl : UILabel!

 
    func updateViews (category : Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryLbl.text = category.title
    }
    
 
    

}
