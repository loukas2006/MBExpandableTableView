//
//  SectionCell.swift
//  TableviewSections
//
//  Created by barkaouimalek on 30/05/2016.
//  Copyright © 2016 Malek Barkaoui. All rights reserved.
//

import UIKit

class SectionCell: UITableViewCell {

    @IBOutlet weak var sectionName: UILabel!
    
    @IBOutlet weak var disclosureicon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
