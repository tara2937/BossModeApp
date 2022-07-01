//
//  AddToVisitViewController.swift
//  BossModeApp
//
//  Created by Scholar on 7/1/22.
//

import UIKit

class AddToVisitViewController: UIViewController {

    var previousVC3 = WantToVisitTableViewController()
    
    @IBOutlet weak var titleTextField3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped3(_ sender: Any) {
        let values3 = Visiting()

        if let titleText3 = titleTextField3.text {
            values3.name3 = titleText3

        }
        previousVC3.items3.append(values3)
        previousVC3.tableView.reloadData()
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

