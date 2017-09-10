//
//  VideoVC.swift
//  PartyRock
//
//  Created by Ariven on 05/09/17.
//  Copyright © 2017 Ariven. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRockData: PartyRockData!
    
    var partyRockData: PartyRockData{
    
        get{
            
            return _partyRockData
        }
        set{
        
            _partyRockData = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRockData.videoTitle
        webView.loadHTMLString(partyRockData.videoURL, baseURL: nil)
    }


    



}
