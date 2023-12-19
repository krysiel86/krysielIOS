//
//  ViewController.swift
//  krysielIOS
//
//  Created by krysiel86 on 12/11/2023.
//  Copyright (c) 2023 krysiel86. All rights reserved.
//

import UIKit
import krysielIOS
import PrebidMobile

class ViewController: UIViewController {

    
    // Prebid
    private var prebidBannerView: BannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Krysiel.sayHello(with: "Krysiel")
         
        
    }
 
    
    
    @objc
    func sampleFunction(){
        NSLog("sampleFunction swift")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

