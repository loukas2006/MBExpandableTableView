//
//  SimpleCell.swift
//  TableviewSections
//
//  Created by barkaouimalek on 31/05/2016.
//  Copyright © 2016 Malek Barkaoui. All rights reserved.
//

import UIKit

class SimpleCell: UITableViewCell {

    @IBOutlet weak var countryname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
