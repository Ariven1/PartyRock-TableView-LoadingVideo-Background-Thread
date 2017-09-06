//
//  MainVC.swift
//  PartyRock
//
//  Created by Ariven on 05/09/17.
//  Copyright © 2017 Ariven. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var partyRockDatas = [PartyRockData]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p1 = PartyRockData(imageURL: "http://www.lyricsol.com/wp-content/uploads/2017/05/Kannaa-Nee-Thoongada.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dqzcQF2Bz7o\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Kanna Nee Thoongadaa")
        
        partyRockDatas.append(p1)
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath)as? PartyCell{
            
            let partyRock = partyRockDatas[indexPath.row]
            
            cell.updateUI(partyRockData: partyRock)
            
            return cell
        }
        else{
        
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return partyRockDatas.count
    }


}

