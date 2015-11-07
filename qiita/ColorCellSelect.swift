//
//  ColorCellSelect.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/25.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import Foundation
import UIKit

class ColorCellSelect {
    class func apply(){
        let backgroundView = UIView()
        UITableViewCell.appearance().selectedBackgroundView = backgroundView
    }
}