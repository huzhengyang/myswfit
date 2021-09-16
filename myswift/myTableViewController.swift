//
//  myTableViewController.swift
//  myswift
//
//  Created by kadis on 2021/9/14.
//

import UIKit

class myTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let btn = UIButton.init(type: .custom)
        btn .setTitle("kadis", for: .normal)
        self.view .addSubview(btn);
        btn .addTarget(self, action: #selector(tapdd), for: .touchUpInside)
        
        
        var box = UIView()
        box.backgroundColor = .gray
        
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
    @objc func tapdd() {
        print("")
    }



}
