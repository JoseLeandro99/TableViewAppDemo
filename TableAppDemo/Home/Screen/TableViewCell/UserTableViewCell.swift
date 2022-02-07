//
//  UserTableViewCell.swift
//  TableAppDemo
//
//  Created by Dev on 07/02/22.
//

import UIKit

class UserTableViewCell : UITableViewCell {
    
    static let identifier: String = "UserTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
