//
//  TableViewCell.swift
//  TableViewChalenge04
//
//  Created by PEDRO HENRIQUE PEREIRA ELIAS DOS SANTOS on 30/11/17.
//  Copyright © 2017 PEDRO HENRIQUE PEREIRA ELIAS DOS SANTOS. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var contactName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
