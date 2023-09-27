//
//  StudentableViewCell.swift
//  ForwardDataPass(Object)
//
//  Created by Mac on 21/09/23.
//

import UIKit

class StudentableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var rollNumberLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
