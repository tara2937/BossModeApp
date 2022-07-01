//
//  AddToListenViewController.swift
//  BossModeApp
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class AddToListenViewController: UIViewController {

    var previousVC2 = WantToListenTableViewController()
    
    @IBOutlet weak var titleTextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped2(_ sender: Any) {
        let values2 = Song()

        if let titleText2 = titleTextField2.text {
            values2.name2 = titleText2

        }
        previousVC2.items2.append(values2)
        previousVC2.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
