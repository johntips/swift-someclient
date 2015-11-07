//
//  Escape.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/20.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import Foundation

class Escape : NSObject {
    
    var captionId:String
    var captionLabel:String
    var museNameLabel:String
    var locationLabel:String
    var museIconImageUrl:String?
    var captionImageUrl:String?
    
    
    init(captionId: String,captionLabel: String, museNameLabel: String,locationLabel: String, museIconImageUrl: String?, captionImageUrl: String?){
        self.captionId = captionId
        self.captionLabel = captionLabel
        self.museNameLabel = museNameLabel
        self.locationLabel = locationLabel
        self.museIconImageUrl = museIconImageUrl
        self.captionImageUrl = captionImageUrl
    }
}

