//
//  RootParseController.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/27.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import UIKit

class RootParseController: UIViewController {
    //とりあえずデータセット,
    //ここからparse方法によって切り替え

    var arraydata:[AnyObject] = []
    func setupData(count:Int) -> NSObject {
        //        -> Array<String>
        // 適当なデータを設定します
        switch count{
        case 1:
            arraydata = [Escape]()
            var result = setEscapeCellData()
            return result as! NSObject
        case 2:
//            anydata = [Collection]()
            arraydata = [Escape]()
            var result = setEscapeCellData()
            return result as! NSObject
        case 3:
//            arraydata = [Muse]()
            arraydata = [Escape]()
            var result = setEscapeCellData()
            return result as! NSObject
        
        default:
            arraydata = [Escape]()
            var result = setEscapeCellData()
            return result as! NSObject
        }
    }
    func setEscapeCellData() ->AnyObject {
        let e1 = Escape(
            captionId: "1",
            captionLabel: "カリブ海メキシコカンクンの大自然とリッツカールトンホテルの旅",
            museNameLabel: "Nami Nonomura",
            locationLabel: "Bari",
            museIconImageUrl: "https://s3-ap-northeast-1.amazonaws.com/image.uploaded-museadmin/musethumnail/thumnailmuse000001-55.png?X-Amz-Date=20151020T083252Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=9b2699ec8a26d8e2f518c571f414cc696c661f476e6ce63e56978e9ca0556665&X-Amz-Credential=ASIAIOQQC2Z6UWN6CG7A/20151020/ap-northeast-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEKL//////////wEagAPo2aNUFmjmczTgWd0tZwRVzGrjxwjt1Y354SDiy6l/koWI7NU3GLJUStNunXCrRDSxQhbTBltYOYZRRK3yTMyy0fZphT/psNFe4/qR7tFrSo9ZewpqSEaoH/LNpXcogDfdGTZjvm3LI%2BOAW2gxnZvJ70X4U9cP4JK12tls0acaiENoHxejl8%2BfPBGCmulvib84KTV7aQpSB0DJnLLaw70B32MZCi%2BboOAlZj8B/1PWSB6ANY4un00GvWfq9BzNYAwIMg2HRT25PLBQ2KUdHc%2BAIq2zLn/MPujZdhwJ0pr1wiG9m24lmrZUqJ820R4deFmDX9mNKOOJyiiyN%2Bo8yjtH8%2BBZD4cpJqS1lA2nmcDLdP31y59bplhEQiquxz7Eef4hnh3tvY6kz1aNpFsiBhkzXCsNRzvwJseSxB%2BzqTlJJ9xc%2BPTplXgp%2BjNuAmtGnu50o%2BGKjUG7xzhB6ja6py4k5uFYGXv8m66JP%2BKQdAQNo5P8iSuRTrqIRMlKuAn4OaAgh/eXsQU%3D",
            captionImageUrl: "https://s3-ap-northeast-1.amazonaws.com/stg.image.tabi-muse/img/escape-20151017-111255-8.jpg?X-Amz-Date=20151020T083139Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=c5e890d4f302661afb43f378c4fc739d8cc96682af8426e84c2a5a87ccdc9a96&X-Amz-Credential=ASIAIOQQC2Z6UWN6CG7A/20151020/ap-northeast-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEKL//////////wEagAPo2aNUFmjmczTgWd0tZwRVzGrjxwjt1Y354SDiy6l/koWI7NU3GLJUStNunXCrRDSxQhbTBltYOYZRRK3yTMyy0fZphT/psNFe4/qR7tFrSo9ZewpqSEaoH/LNpXcogDfdGTZjvm3LI%2BOAW2gxnZvJ70X4U9cP4JK12tls0acaiENoHxejl8%2BfPBGCmulvib84KTV7aQpSB0DJnLLaw70B32MZCi%2BboOAlZj8B/1PWSB6ANY4un00GvWfq9BzNYAwIMg2HRT25PLBQ2KUdHc%2BAIq2zLn/MPujZdhwJ0pr1wiG9m24lmrZUqJ820R4deFmDX9mNKOOJyiiyN%2Bo8yjtH8%2BBZD4cpJqS1lA2nmcDLdP31y59bplhEQiquxz7Eef4hnh3tvY6kz1aNpFsiBhkzXCsNRzvwJseSxB%2BzqTlJJ9xc%2BPTplXgp%2BjNuAmtGnu50o%2BGKjUG7xzhB6ja6py4k5uFYGXv8m66JP%2BKQdAQNo5P8iSuRTrqIRMlKuAn4OaAgh/eXsQU%3D"
            
        )
        let e2 = Escape(
            captionId: "2",
            captionLabel: "カリブ海メキシコカンクンの大自然とリッツカールトンホテルの旅",
            museNameLabel: "Nami Nonomura",
            locationLabel: "Bari",
            museIconImageUrl: "https://s3-ap-northeast-1.amazonaws.com/image.uploaded-museadmin/musethumnail/thumnailmuse000001-55.png?X-Amz-Date=20151021T235224Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=9d1bd24626a25631b78075fa9a858d7a46616c7b3c3069903d463d9b9c2d2e5f&X-Amz-Credential=ASIAI2GWXU3QSKAFD4QA/20151021/ap-northeast-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEMn//////////wEagAPROBGqJ/O1NWqCalyD7FqdJQWnL6s38JxWAE9BKeIwIlwKlgFnOs/uuih5smJ3MoN%2BoVkppgTwswpRX/4YJu9TLGcQFS4inIWow4pY9w/mHK5V86MS1r2alCWM1z4%2BfbI8mjolXmU/uywcjLZ3Uv3Zfa03m3OHe3ef9KIFGUyzyPf5CUuk0Y6%2BXGjfZ0fLINEcopMqBZWc9Jk21BFbp1zp6NAE5u8xfEGNLthwUm65UPiSMwlAdv/gEVsh9H9x03EKrjj3Qx1nDDGzuqHmzl40So/2DtVoR0KHJP2ZfO%2BT8cnKCvzJlzlM02jzPtesMJvJEMiC5dvyYRVcVOvk7w7Zx10DpkS82AvA8/jyDbHTx7I68vQgfYDGVyVJUhz4QCiO9ITFcJuk1guZkGImG1nm/ihSQDDfkWW4se8PN0OczciyhwMdxI2Y1XJvp6SH7UXxruue1yc9Q2fvffLwgPffdILRrWwPLiVRmM2Cgi0eX4aAp/hNx3EORfzXyk%2BlHscgpMqgsQU%3D",
            captionImageUrl: "https://s3-ap-northeast-1.amazonaws.com/image.uploaded-museadmin/escape/escape000001-001.png?X-Amz-Date=20151021T235323Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=e918e9509a4c22503446134212e90ad1e142df895e4fd7b89fec029e09924d9b&X-Amz-Credential=ASIAI2GWXU3QSKAFD4QA/20151021/ap-northeast-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEMn//////////wEagAPROBGqJ/O1NWqCalyD7FqdJQWnL6s38JxWAE9BKeIwIlwKlgFnOs/uuih5smJ3MoN%2BoVkppgTwswpRX/4YJu9TLGcQFS4inIWow4pY9w/mHK5V86MS1r2alCWM1z4%2BfbI8mjolXmU/uywcjLZ3Uv3Zfa03m3OHe3ef9KIFGUyzyPf5CUuk0Y6%2BXGjfZ0fLINEcopMqBZWc9Jk21BFbp1zp6NAE5u8xfEGNLthwUm65UPiSMwlAdv/gEVsh9H9x03EKrjj3Qx1nDDGzuqHmzl40So/2DtVoR0KHJP2ZfO%2BT8cnKCvzJlzlM02jzPtesMJvJEMiC5dvyYRVcVOvk7w7Zx10DpkS82AvA8/jyDbHTx7I68vQgfYDGVyVJUhz4QCiO9ITFcJuk1guZkGImG1nm/ihSQDDfkWW4se8PN0OczciyhwMdxI2Y1XJvp6SH7UXxruue1yc9Q2fvffLwgPffdILRrWwPLiVRmM2Cgi0eX4aAp/hNx3EORfzXyk%2BlHscgpMqgsQU%3D"
            
        )
        arraydata.append(e1)
        arraydata.append(e2)
        return arraydata
    }

}
