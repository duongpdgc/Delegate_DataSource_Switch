//
//  DataSource_String.swift
//  Delegate_DataSource_Switch
//
//  Created by Admin on 1/4/18.
//  Copyright © 2018 anhhao. All rights reserved.
//

import UIKit

class DataSource_String: NSObject, UITableViewDataSource {
    
    var arrString🐶 = ["Duong", "Dep", "nhu", "dog"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrString🐶.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = arrString🐶[indexPath.row]
        return cell
    }
}
