//
//  leftCell.swift
//  Chatalyst
//
//  Created by Robin Malhotra on 20/02/16.
//  Copyright © 2016 Robin Malhotra. All rights reserved.
//

import UIKit

class leftCell: UITableViewCell {

    var messageLabel = UILabel()
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        messageLabel.frame =  CGRectMake(10,10,100,100)
        self.addSubview(messageLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
