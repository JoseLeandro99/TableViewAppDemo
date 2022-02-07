//
//  UserCustomViewCell.swift
//  TableAppDemo
//
//  Created by Dev on 07/02/22.
//

import UIKit

class UserCustomViewCell : UIView {
    
    lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.textColor = .darkGray
        return label
    }()
    
    lazy var useremailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    lazy var usertypeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .light)
        label.textColor = .lightGray
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configSuperView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configSuperView() {
        self.addSubview(usernameLabel)
        self.addSubview(useremailLabel)
        self.addSubview(usertypeLabel)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.usernameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -20),
            self.usernameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.useremailLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.useremailLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            self.usertypeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 20),
            self.usertypeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
}
