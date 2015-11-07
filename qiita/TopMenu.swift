//
//  TopMenu.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/11/02.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import UIKit

class TopMenu: UITableViewCell {

    @IBOutlet weak var logo: UIView!
    
    @IBOutlet weak var dotBar: UIImageView!
    @IBOutlet weak var menuIcon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
