//
//  InventoryViewController.swift
//  StepCounter
//
//  Created by Alex  Oser on 2/9/16.
//  Copyright © 2016 Alex Oser. All rights reserved.
//

import UIKit

class InventoryViewController: UIViewController {

    @IBOutlet weak var stepsToday: UILabel!
    @IBOutlet weak var stepsSinceDownload: UILabel!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.stepsToday.text = "\(self.defaults.integerForKey("stepsTaken"))"
        self.stepsSinceDownload.text = "\(self.defaults.integerForKey("stepsSinceDownload"))"
    }
    
}
