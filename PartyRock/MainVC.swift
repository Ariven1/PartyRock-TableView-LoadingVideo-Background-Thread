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
        
        let p1 = PartyRockData(imageURL: "http://www.lyricsol.com/wp-content/uploads/2017/05/Kannaa-Nee-Thoongada.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/dqzcQF2Bz7o\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Kanna Nee Thoongadaa")
        
        let p2 = PartyRockData(imageURL: "http://images.indianexpress.com/2017/08/mersal-song-main.jpg?w=600", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/3XmrZaVVUpc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Aalaporaan Thamizhan Tamil")
        
        let p3 = PartyRockData(imageURL: "http://kollybuzz.com/wp-content/uploads/2017/08/neethanae-single-mersal-shreya-ghoshal.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/jCafZht8yMA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Neethanae")
        
        let p4 = PartyRockData(imageURL: "https://i.ytimg.com/vi/wFlwe8JENeQ/maxresdefault.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/YW57xBVEIP8\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Mersal Arasan")
        
        let p5 = PartyRockData(imageURL: "http://i0.wp.com/www.lyricsinbox.com/wp-content/uploads/2016/12/Maruvaarthai-Lyrics.jpg?fit=1200%2C675", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/rpIlP6pI8fo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Maruvaarthai")
        
        partyRockDatas.append(p1)
        partyRockDatas.append(p2)
        partyRockDatas.append(p3)
        partyRockDatas.append(p4)
        partyRockDatas.append(p5)
        
        
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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRockDatas[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC{
        
            if let party = sender as? PartyRockData{
            
                destination.partyRockData = party
            }
        }
    }
    
    @IBAction func unwindToMainVC(segue: UIStoryboardSegue){
    
        
    }
}











