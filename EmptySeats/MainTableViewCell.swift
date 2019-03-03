//
//  MainTableViewCell.swift
//  EmptySeats
//
//  Created by Siddhant Goel on 3/2/19.
//  Copyright © 2019 Siddhant Goel. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var CellView: UIView!
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var FromLabel: UILabel!
    @IBOutlet weak var ToLabel: UILabel!
    @IBOutlet weak var TimeALabel: UILabel!
    @IBOutlet weak var TimeBLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
