//
//  NewsCell.swift
//  NY Times
//
//  Created by sourav on 12/03/19.
//  Copyright © 2019 sourav. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {

    @IBOutlet var newsImageView: UIImageView!
    @IBOutlet var newsHeaderLabel: UILabel!
    @IBOutlet var newsAuthorLabel: UILabel!
    @IBOutlet var newsDateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
