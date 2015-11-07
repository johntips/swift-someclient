//
//  Muse.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/11/02.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import Foundation

class Muse : NSObject {
    
    var leftImgMuseProfilenId:String
    var leftMuseNameLabel:String
    var leftMuseNameImgUrl:String
    
    var rightImgMuseProfilenId:String
    var rightMuseNameLabel:String
    var rightMuseNameImgUrl:String
    
    
    init(ImgMUseProfileId: String,museNameLabel:String, museNameImgUrl:String?,rightImgMuseProfilenId:String,rightMuseNameLabel:String,rightMuseNameImgUrl:String){
        self.leftImgMuseProfilenId = ImgMUseProfileId
        self.leftMuseNameLabel = museNameLabel
        self.leftMuseNameImgUrl = museNameImgUrl!
        
        self.rightImgMuseProfilenId = rightImgMuseProfilenId
        self.rightMuseNameLabel = rightMuseNameLabel
        self.rightMuseNameImgUrl = rightMuseNameImgUrl
        
    }
}