//
//  cellprotocol.swift
//  qiita
//
//  Created by Teiyu Ueki on 2015/10/22.
//  Copyright © 2015年 Teiyu Ueki. All rights reserved.
//

import Foundation
import UIKit

// cell xib を接続する　delegate protocol

protocol Instantiatable {
    typealias InstanceType
    static func instantiateFromResource(resourceName: String?, identifier: String?) -> InstanceType!
}

protocol ResourceBundleProvider {
    static var resourceBundle: NSBundle { get }
}
extension ResourceBundleProvider {
    static var resourceBundle: NSBundle { return NSBundle.mainBundle() }
}

protocol StoryboardInstantiatable: Instantiatable, ResourceBundleProvider {
    typealias InstanceType = Self
    static var storyboardName: String { get }
    static var viewControllerIdentifier: String? { get }
}
extension StoryboardInstantiatable {
    static var storyboardName: String { return "" }
    static var viewControllerIdentifier: String? { return nil }
    
    static func instantiateFromResource(resourceName: String? = nil, identifier: String? = nil) -> InstanceType! {
        let name = resourceName ?? storyboardName
        let identifier = identifier ?? viewControllerIdentifier
    
        let storyboard = UIStoryboard(name: name, bundle: resourceBundle)
        if let identifier = identifier {
            return storyboard.instantiateViewControllerWithIdentifier(identifier) as! InstanceType
        } else {
            return storyboard.instantiateInitialViewController() as! InstanceType
        }
    }
}

protocol NibInstantiatable: Instantiatable, ResourceBundleProvider {
    typealias InstanceType = Self
    static var nibName: String { get }
}

extension NibInstantiatable {
    static var nibName: String { return "" }
    static func instantiateFromResource(resourceName: String? = nil, identifier: String? = nil) -> InstanceType! {
        let name = resourceName ?? nibName
        let nib = UINib(nibName: name, bundle: resourceBundle)
        return nib.instantiateWithOwner(nil, options: nil).first as! InstanceType
    }
}
