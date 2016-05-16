//
//  FoodListTableViewCell.swift
//  FoodList
//
//  Created by Arman Jon Villalobos on 16/05/2016.
//  Copyright © 2016 Arman Jon Villalobos. All rights reserved.
//

import UIKit

class FoodListTableViewCell: UITableViewCell {
    
    @IBOutlet var thumbnaiViewImage: UIImageView!
    @IBOutlet var foodNameLabel: UILabel!
    @IBOutlet var foodPriceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
