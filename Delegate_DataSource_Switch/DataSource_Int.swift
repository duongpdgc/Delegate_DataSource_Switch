//
//  DataSource_Int.swift
//  Delegate_DataSource_Switch
//
//  Created by Admin on 1/4/18.
//  Copyright © 2018 anhhao. All rights reserved.
//

import UIKit
class DataSource_Int: NSObject, UITableViewDataSource {
    
    var arrInt🐱 = [Int](1...10)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrInt🐱.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = String(arrInt🐱[indexPath.row])
        return cell
    }
}
