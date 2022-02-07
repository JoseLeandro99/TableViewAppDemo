//
//  HomeScreen.swift
//  TableAppDemo
//
//  Created by Dev on 07/02/22.
//

import UIKit

class HomeScreen : UIView {
    
    lazy var usersTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .white
        table.register(UserTableViewCell.self, forCellReuseIdentifier: UserTableViewCell.identifier)
        table.separatorInset = .zero
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.configBackground()
        self.configSuperView()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configBackground() {
        self.backgroundColor = .lightGray
    }
    
    func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.usersTableView.delegate = delegate
        self.usersTableView.dataSource = dataSource
    }
    
    func configSuperView() {
        self.addSubview(usersTableView)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.usersTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.usersTableView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.usersTableView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.usersTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
