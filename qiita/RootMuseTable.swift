//
//  RootMuseTable.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/11/04.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import UIKit

class RootMuseTable: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var app:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
    var count:Int = 100
    var escapes = [Escape]()
    var rootParseDataController = RootParseController()
    var gestureController:GestureController!
    var swipeGestureRecognizer :UISwipeGestureRecognizer!
    
    //2.setup data
    //    var array:[AnyObject] = RootParseController().setupData() as! [Escape]
    var array:[AnyObject] = []
    
    override func viewDidLoad() {
        
        
        //init table instance
        print(array)
        
        setRootTable()
        
    }
    
    func setRootTable(){
        
        //1.check internet access
        print("1.countを出す")
        count = app.count
        print(count)
        print("=========")
        
        
        //2.set tablecell xib & delegate
        self.setNib(count)
        
        //3.set
        
        print("2.setnibを出す")
        print(self.setNib(count))
        print("3.setnibの中身を取り出す")
        var aaa = self.setNib(count)
        print("identifier")
        print(aaa.identifier)
        
        //4.set tabledatasource,tabledelgate
        array = RootParseController().setupData(count) as! [AnyObject]
        
        
        //set gesture
        self.swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "gestureCatch:")
        self.tableView.addGestureRecognizer(self.swipeGestureRecognizer)
        
        //set delegate
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func setNib(count:Int) -> (nib:UINib,identifier:String){
        if count == 1 {
            var identifier:String = "EscapeCell"
            var nib:UINib = UINib(nibName: identifier, bundle: nil)
            tableView.registerNib(nib, forCellReuseIdentifier: identifier)
            print(identifier)
            return(nib,identifier)
            
        } else if count == 2{
            var identifier:String = "CollectionCell"
            var nib:UINib = UINib(nibName: identifier, bundle: nil)
            self.tableView.registerNib(nib, forCellReuseIdentifier: identifier)
            print(identifier)
            return(nib,identifier)
        } else if count == 3 {
            var identifier:String = "MuseCell"
            var nib:UINib = UINib(nibName: identifier, bundle: nil)
            self.tableView.registerNib(nib, forCellReuseIdentifier: identifier)
            print(identifier)
            return(nib,identifier)
        } else {
            var identifier:String = "EscapeCell"
            var nib:UINib = UINib(nibName: identifier, bundle: nil)
            self.tableView.registerNib(nib, forCellReuseIdentifier: identifier)
            return(nib,identifier)
        }
    }
    
    func gestureCatch(sender: UISwipeGestureRecognizer){
        
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
    }
    func swiped(gesture: UIGestureRecognizer){
        
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Left:
                // 左
                
                app.count = app.count - 1
                if app.count < 1 {
                    app.count = 3
                }
                
                print("left")
                print(app.count)
                presentSetStoryboard(app.count)
                
            case UISwipeGestureRecognizerDirection.Right:
                // 右
                app.count = app.count + 1
                if app.count > 3{
                    app.count = 1
                }
                
                print("right")
                print(count)
                presentSetStoryboard(app.count)
                
                
                
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
    }
    func presentSetStoryboard(count:Int){
        var nex = UIViewController()
        var selfStroyboard = self.storyboard
        
        switch count{
        case 1:
            nex = selfStroyboard!.instantiateViewControllerWithIdentifier("EscapeStory") as UIViewController
            self.presentViewController(nex, animated: true, completion: nil)
        case 2:
            nex = selfStroyboard!.instantiateViewControllerWithIdentifier("CollectionStory") as UIViewController
            self.presentViewController(nex, animated: true, completion: nil)
        case 3:
            nex = selfStroyboard!.instantiateViewControllerWithIdentifier("MuseStory") as UIViewController
            self.presentViewController(nex, animated: true, completion: nil)
        default:
            nex = selfStroyboard!.instantiateViewControllerWithIdentifier("EscapeStory") as UIViewController
            self.presentViewController(nex, animated: true, completion: nil)
        }
        
    }
}

extension RootMuseTable: UITableViewDelegate,UITableViewDataSource {
    
    // MARK - UICollectionViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count // link数に変更
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 550
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // IdentifierがLinkViewCellのセルを使いまわす
        switch count {
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("EscapeCell") as! EscapeCell
            // cellの内容を設定
            cell.setCellEscape(array[indexPath.row] as! Escape)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCellWithIdentifier("EscapeCell") as! EscapeCell
            // cellの内容を設定
            cell.setCellEscape(array[indexPath.row] as! Escape)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCellWithIdentifier("MuseCell") as! MuseCell
            // cellの内容を設定
            cell.setCellMuse(array[indexPath.row] as! Muse)
            return cell
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("EscapeCell") as! EscapeCell
            // cellの内容を設定
            cell.setCellEscape(array[indexPath.row] as! Escape)
            return cell
        }
    }

}
