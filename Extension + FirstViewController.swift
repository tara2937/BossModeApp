//
//  Extension + FirstViewController.swift
//  BossModeApp
//
//  Created by Scholar on 6/30/22.
//

import Foundation


import UIKit

extension UIViewController{
    func showAlert(title: String, message : String, handlerOK :((UIAlertAction) -> Void)?, handlerCancel :((UIAlertAction) -> Void)?){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOkay = UIAlertAction(title: "Okay!", style: .cancel, handler: handlerOK)
        let actionCancel = UIAlertAction(title: "Cancel", style: .destructive, handler: handlerCancel)
        alert.addAction(actionOkay)
        alert.addAction(actionCancel)
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
}
