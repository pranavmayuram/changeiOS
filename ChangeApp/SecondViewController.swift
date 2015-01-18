//
//  SecondViewController.swift
//  ChangeApp
//
//  Created by Pranav Mayuram on 1/17/15.
//  Copyright (c) 2015 Pranav Mayuram. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController {
    
    @IBOutlet weak var stringDate: UILabel!
    
    var tempstring: String?
    
    override func viewDidLoad() {
        stringDate.text = tempstring
    }
}
