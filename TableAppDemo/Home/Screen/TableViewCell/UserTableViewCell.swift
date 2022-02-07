//
//  UserTableViewCell.swift
//  TableAppDemo
//
//  Created by Dev on 07/02/22.
//

import UIKit

class UserTableViewCell : UITableViewCell {
    
    static let identifier: String = "UserTableViewCell"
    
    lazy var userCustomViewCell: UserCustomViewCell = {
        let view = UserCustomViewCell()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.configSuperView()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configUserData(data: UserData) {
        self.userCustomViewCell.usernameLabel.text = data.username
        self.userCustomViewCell.useremailLabel.text = data.email
        self.userCustomViewCell.usertypeLabel.text = data.type
    }
    
    func configSuperView() {
        self.addSubview(userCustomViewCell)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.userCustomViewCell.topAnchor.constraint(equalTo: self.topAnchor),
            self.userCustomViewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userCustomViewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.userCustomViewCell.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
