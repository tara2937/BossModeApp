//
//  WantToListenTableViewController.swift
//  BossModeApp
//
//  Created by Scholar on 6/30/22.
//

import UIKit

class WantToListenTableViewController: UITableViewController {

    fileprivate let cellID = "cellID"
    //fileprivate var items = [" "]
    var items2 : [Song] = []
    @IBOutlet var WantToListenTable: UITableView!
    
    func createSong() -> [Song] {

      let swift = Song()
      swift.name = "This is where your songs will appear!"
      
      // important is set to false by default

      return [swift]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items2.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        // #warning Incomplete implementation, return the number of rows
        let cell =
        tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        cell.textLabel?.text = items2[indexPath.row].name
        
        cell.textLabel?.textColor = .red

        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tableView.beginUpdates()
            items2.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()

        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddToListenViewController {
        addVC.previousVC = self
      }
    
    }

}
