//
//  Link.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/16.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import Foundation

class Link : NSObject {
    var title:String
    var username:String
    var userIconUrl:String?
    var stockCount:Int
    
    init(title: String, username: String, userIconUrl: String?, stockCount: Int){
        self.title = title
        self.username = username
        self.userIconUrl = userIconUrl
        self.stockCount = stockCount
    }
}
