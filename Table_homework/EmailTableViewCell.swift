//
//  EmailTableViewCell.swift
//  Table_homework
//
//  Created by Глеб Клыга on 27.10.23.
//

import UIKit

class EmailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customEmailImageView: UIImageView!
    @IBOutlet weak var customEmailLabel: UILabel!
    
    static let identifier = "EmailTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "EmailTableViewCell", bundle: nil)
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
