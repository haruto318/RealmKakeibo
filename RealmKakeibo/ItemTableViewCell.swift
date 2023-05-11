//
//  ItemTableViewCell.swift
//  RealmKakeibo
//
//  Created by Haruto Hamano on 2023/05/11.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var markImageVIew: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(title: String, price: Int, isMarked: Bool){
        titleLabel.text = title
        
        priceLabel.text = String(price) + "円"
        if isMarked {
            markImageVIew.image = UIImage(systemName: "star.fill")
        } else {
            markImageVIew.image = UIImage(systemName: "star")
        }
    }
    
}
