//
//  TableViewController.swift
//  Delegate_DataSource_Switch
//
//  Created by Admin on 1/4/18.
//  Copyright © 2018 anhhao. All rights reserved.
//

import UIKit
import os.log

class TableViewController: UIViewController, DetailTableViewControllerDelegate🐶 {

     @IBOutlet var tableView: UITableView!
    
    var dbSource_String = DataSource_String()
    var dbSource_Int = DataSource_Int()
    var dlg_String = Delegate_String()
    var dlg_Int = Delegate_Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dbSource_Int
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func passData(_ name: String) {
        if tableView.dataSource === dbSource_Int {
            dbSource_Int.arrInt🐱.append(Int(name)!)
        } else {
            dbSource_String.arrString🐶.append(name)
        }
        tableView.reloadData()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    @IBAction func Switch(_ sender: UISwitch)
    {
        if (sender.isOn == true) {
            tableView.dataSource = dbSource_Int
        } else {
            tableView.dataSource = dbSource_String
        }
        
        tableView.reloadData()
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        switch (segue.identifier ?? "") {
        case "show" :
            os_log("Adding a new meal.", log: OSLog.default, type: .debug)
        case "showCell" :
            guard let vCDisplay = segue.destination as? ViewControllerDisplay else {
                return
            }
            if let selected = tableView.indexPathForSelectedRow{
                if tableView.dataSource === dbSource_Int {
                    let selected_Int = dbSource_Int.arrInt🐱[selected.row]
                    vCDisplay.lbText = String(selected_Int)
                    vCDisplay.txtText = String(selected_Int)
                } else {
                    let selected_String = dbSource_String.arrString🐶[selected.row]
                    vCDisplay.lbText = selected_String
                    vCDisplay.txtText = selected_String
                }
            }
            vCDisplay.delegate = self
        default:
            fatalError("Unexpected Segue Identifier; \(String(describing: segue.identifier))")
        }
    }
}
