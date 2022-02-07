//
//  HomeController.swift
//  TableAppDemo
//
//  Created by Dev on 07/02/22.
//

import UIKit

class HomeController : UIViewController {
    
    var homeScreen: HomeScreen?
    
    let data: [UserData] = [
        UserData(username: "User One", email: "admin@email.com", type: "Admin"),
        UserData(username: "User Two", email: "guest@email.com", type: "Guest"),
        UserData(username: "User Tree", email: "manager@email.com", type: "Manager")
    ]
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configNavigationBar()
        self.homeScreen?.configTableView(delegate: self, dataSource: self)
    }
    
    private func configNavigationBar() {
        self.navigationController?.navigationBar.topItem?.title = "Tabela"
    }
}


extension HomeController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UserTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell
        
        cell?.configUserData(data: data[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = AlertHelper.alert(title: data[indexPath.row].username, message: "Selected")
        present(alert, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        let title: String = data[indexPath.row].username
        let message: String = "\(data[indexPath.row].email) - \(data[indexPath.row].type)"
        
        let alert = AlertHelper.actionSheet(title: title, message: message)
        present(alert, animated: true, completion: nil)
    }
}
