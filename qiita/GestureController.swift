//
//  GestureController.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/26.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import UIKit

class GestureController: UIViewController {

    
    // スワイプ検知用
    
    func swipedetection(count:Int)-> Int{
        var setcount = count
        var resultcount = addSwipeRecognizer(setcount)
        return resultcount
    }
    
    func addSwipeRecognizer(setcount:Int)->(Int) {
        
        var count:Int = setcount
        print("==これは渡ってきたcount===")
        print(count)
        print("setcount")
        print(count)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        
        self.view.addGestureRecognizer(swipeLeft)
        self.view.addGestureRecognizer(swipeRight)
        self.view.addGestureRecognizer(swipeUp)
        self.view.addGestureRecognizer(swipeDown)
        return setcount
    }
    
    
    func swiped(gesture: UIGestureRecognizer,count: Int) ->Int{
        
        var setcount = count
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
        
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Left:
                // 左
               
                setcount = setcount - 1
                if setcount < 1 {
                    setcount = 3
                }
                
                print("left")
                print(setcount)
                return setcount
                
            case UISwipeGestureRecognizerDirection.Right:
                // 右
                setcount = setcount + 1
                if setcount > 3{
                    setcount = 1
                }
                
                print("right")
                print(setcount)
                return setcount
                
            case UISwipeGestureRecognizerDirection.Up:
                // 上
                print("up")
            case UISwipeGestureRecognizerDirection.Down:
                // 下
                print("down")
                //再読み込みアクション
                loadView()
                viewDidLoad()
            default:
                // その他
                print("other")
                break
            }
            
        }
        return setcount
    }
    
    
}
