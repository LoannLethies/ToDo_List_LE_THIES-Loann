//
//  myTableViewCell.swift
//  TP_Loann
//
//  Created by Loann Le Thies on 09/11/2022.
//

import UIKit

class myTableViewCell: UITableViewCell {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var mylabel: UILabel!
    
}
