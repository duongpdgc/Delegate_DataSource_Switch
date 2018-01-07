//
//  ViewControllerDisplay.swift
//  Delegate_DataSource_Switch
//
//  Created by Admin on 1/5/18.
//  Copyright © 2018 anhhao. All rights reserved.
//

import UIKit

class ViewControllerDisplay: UIViewController {

    @IBOutlet weak var lbDisplay: UILabel!
    @IBOutlet weak var txtChange: UITextField!
    
    var lbText : String!
    var txtText : String!
    var delegate : DetailTableViewControllerDelegate🐶?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbDisplay.text = lbText
        txtChange.text = txtText
    }
    
    @IBAction func btnSave(_ sender: UIBarButtonItem) {
        if txtChange.text != "" {
            delegate?.passData(txtChange.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        delegate?.passData(txtChange.text!)
//    }
}
