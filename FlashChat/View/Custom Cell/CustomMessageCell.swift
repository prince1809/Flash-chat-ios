//
//  CustomMessageCellTableViewCell.swift
//  FlashChat
//
//  Created by Prince Kumar on 2019/08/31.
//  Copyright © 2019 Prince Kumar. All rights reserved.
//

import UIKit

class CustomMessageCell: UITableViewCell {
    
    @IBOutlet var messageBackground: UIView!
    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var senderUserName: UILabel!
    @IBOutlet var messageBody: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
