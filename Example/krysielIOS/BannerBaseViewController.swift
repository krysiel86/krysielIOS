//
//  BannerBaseViewController.swift
//  krysielIOS_Example
//
//  Created by mac on 12/19/23.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import UIKit

fileprivate let bannerBaseViewControllerNibName = "Main"

/// Base controller, which provides banner controls, i.e. banner view
class BannerBaseViewController: UIViewController {
    
    @IBOutlet weak var bannerView: UIView!
    
    // Integration case ad size, for banner default size 320x50
    // This property is later setuped with an IntegrationCase size
    var adSize = CGSize(width: 320, height: 50)
    
    convenience init(adSize: CGSize) {
        NSLog("BannerBaseViewController init")

        
        self.init(nibName: bannerBaseViewControllerNibName, bundle: nil)
        self.adSize = adSize
    }
    
    convenience init() {
        self.init(nibName: bannerBaseViewControllerNibName, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.constraints.first { $0.firstAttribute == .width }?.constant = adSize.width
        bannerView.constraints.first { $0.firstAttribute == .height }?.constant = adSize.height

  }
    
}
