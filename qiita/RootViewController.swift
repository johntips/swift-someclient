//
//  ViewController.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/16.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//
import UIKit

class RootViewController: UIViewController{
    
    var rootTableViewController:RootTableViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //check internet access
        
        //get tableview
        settable()
        
    }
    func settable(){
        rootTableViewController.setRootTable()
    }
  
    
}