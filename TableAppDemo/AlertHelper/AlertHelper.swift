//
//  AlertHelper.swift
//  TableAppDemo
//
//  Created by Dev on 07/02/22.
//

import UIKit

class AlertHelper : UIViewController {
    
    static func alert(title: String, message: String) -> UIAlertController {
        let alert: UIAlertController
        alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(alertAction)
        
        return alert
    }
    
    static func actionSheet(title: String, message: String) -> UIAlertController {
        let alert: UIAlertController
        alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        let alertAction = UIAlertAction(title: "Confirm", style: .default, handler: nil)
        
        alert.addAction(alertAction)
        
        return alert
    }
}
