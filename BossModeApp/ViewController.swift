//
//  ViewController.swift
//  BossModeApp
//
//  Created by Scholar on 6/29/22.
//PLS WORK PLS SEE THIS
// its paisley

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showAlert(title: "Boss Mode Time!!", message: "Would you like to complete the daily check in?", handlerOK: {actionOkay in self.performSegue(withIdentifier: "activateBossMode", sender: nil)}, handlerCancel: {actionCancel in print("cancel")})
        // Do any additional setup after loading the view.
    }


}

