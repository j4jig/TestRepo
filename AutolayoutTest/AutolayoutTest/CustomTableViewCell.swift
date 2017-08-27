//
//  CustomTableViewCell.swift
//  AutolayoutTest
//
//  Created by gaurav sharma on 23/08/17.
//  Copyright © 2017 gaurav sharma. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
