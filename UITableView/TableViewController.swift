//
//  TableViewController.swift
//  UITableView
//
//  Created by 준수김 on 2021/09/23.
//

import UIKit

class TableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak override var tableView: UITableView!
    
    let tableArray = ["a", "b", "c", "d", "e"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


}
