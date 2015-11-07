//
//  MuseCell.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/11/02.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import UIKit
import AlamofireImage

class MuseCell: UITableViewCell,NibInstantiatable {


    @IBOutlet weak var leftImg: UIImageView!
    @IBOutlet weak var rightImg: UIImageView!
    @IBOutlet weak var leftNameLabel: UILabel!
    @IBOutlet weak var rightNameLabel: UILabel!

    var leftMuseId: Int = 0
    var rightMuseId:Int = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCellMuse(muse: Muse) {
        self.leftNameLabel.text = muse.leftMuseNameLabel
        self.rightNameLabel.text = muse.rightMuseNameLabel

        
        if let leftImgUrl:String = muse.leftMuseNameImgUrl {
            self.leftImg.af_setImageWithURL(NSURL(string: leftImgUrl)!)
        }
        if let RightImgUrl:String = muse.rightMuseNameImgUrl {
            self.rightImg.af_setImageWithURL(NSURL(string: RightImgUrl)!)
        }
        
    }
}
