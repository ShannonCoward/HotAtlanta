//
//  DetailVC.swift
//  HotAtlanta
//
//  Created by Shannon Coward on 5/30/16.
//  Copyright © 2016 Shannon Coward. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backBtnPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    
    }
}
