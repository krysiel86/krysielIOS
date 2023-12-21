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

fileprivate let bannerBaseViewControllerNibName = "Main"


class ViewController: UIViewController , BannerViewDelegate {

    fileprivate let storedImpDisplayBanner = "prebid-demo-banner-320-50"
    
    private var prebidBannerView: BannerView!

    
    @IBOutlet weak var bannerView: UIView!
    
    
    @IBOutlet weak var button: UIButton!
    
    // Integration case ad size, for banner default size 320x50
    // This property is later setuped with an IntegrationCase size
    var adSize = CGSize(width: 320, height: 50)
    
    convenience init(adSize: CGSize) {
        self.init(nibName: bannerBaseViewControllerNibName, bundle: nil)
        self.adSize = adSize
    }
    
    convenience init() {
        self.init(nibName: bannerBaseViewControllerNibName, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("viewController viewDidLoad")
        
        bannerView.constraints.first { $0.firstAttribute == .width }?.constant = adSize.width
        bannerView.constraints.first { $0.firstAttribute == .height }?.constant = adSize.height
         
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

     }
    
    // 버튼 액션 메서드
    @IBAction func buttonTapped(_ sender: UIButton) {
        NSLog("buttonTapped")
        // Storyboard에서 세그웨이를 사용하여 다음 ViewController로 이동
        //           performSegue(withIdentifier: "BannerViewTest", sender: self)
//        navigationController?.pushViewController("BannerViewTest", animated: true)

        createAd() 
        
    }
    
    func createAd() {
        print("createAd");
         // 1. Create a BannerView
        prebidBannerView = BannerView(frame: CGRect(origin: .zero, size: adSize), configID: storedImpDisplayBanner, adSize: adSize)
        
        // 2. Configure the BannerView
        prebidBannerView.delegate = self
        prebidBannerView.adFormat = .banner
        prebidBannerView.videoParameters.placement = .InBanner
        
        // Add Prebid banner view to the app UI
        bannerView.addSubview(prebidBannerView)
        
        // 3. Load the banner ad
        prebidBannerView.loadAd()
    }
    
    func bannerViewPresentationController() -> UIViewController? {
        self
    }
    
 
}
 
