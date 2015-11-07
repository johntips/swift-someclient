//
//  LinkCell.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/16.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import Foundation
import UIKit

class LinkViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var userIcon: UIImageView!
    @IBOutlet weak var stockCount: UILabel!
    
    func setCell(link: Link) {
        self.title.text = link.title
        self.username.text = link.username
        self.stockCount.text = String(link.stockCount)
        
        if let userIconUrl = link.userIconUrl {
            let data = NSData(contentsOfURL: NSURL(string: userIconUrl)!)
            self.userIcon.image = UIImage(data: data!)
        }
    }
}