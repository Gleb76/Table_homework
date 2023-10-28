//
//  MyTableViewCell.swift
//  Table_homework
//
//  Created by Глеб Клыга on 27.10.23.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var customPhoneImageView: UIImageView!
    @IBOutlet weak var customPhoneLabel: UILabel!
    
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
