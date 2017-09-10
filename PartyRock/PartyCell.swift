//
//  PartyCell.swift
//  PartyRock
//
//  Created by Ariven on 05/09/17.
//  Copyright © 2017 Ariven. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImageView: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    func updateUI(partyRockData: PartyRockData){
    
        videoTitle.text = partyRockData.videoTitle
        let url = URL(string: partyRockData.imageURL)!
        
        DispatchQueue.global().async {
            
            do{
            
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    
                    self.videoPreviewImageView.image = UIImage(data: data)
                }
            }
            catch{
                
                print(error.localizedDescription)
            }
        }
    }

}
