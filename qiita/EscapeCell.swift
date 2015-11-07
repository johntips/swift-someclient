//
//  EscapeCell.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/22.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import UIKit
import AlamofireImage


class EscapeCell: UITableViewCell,NibInstantiatable {

    @IBOutlet weak var museImg: UIImageView!
    @IBOutlet weak var museNameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var escapeImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCellEscape(escape: Escape) {
        self.captionLabel.text = escape.captionLabel
        self.museNameLabel.text = escape.museNameLabel
        self.locationLabel.text = escape.locationLabel
        
        if let escapeimageUrl:String = escape.captionImageUrl {
        self.escapeImg.af_setImageWithURL(NSURL(string: escapeimageUrl)!)
        }
        
        if let museimageUrl:String = escape.museIconImageUrl {
            self.escapeImg.af_setImageWithURL(NSURL(string: museimageUrl)!)
        }
        
    }
}