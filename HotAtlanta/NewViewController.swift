//
//  NewViewController.swift
//  HotAtlanta
//
//  Created by Shannon Coward on 6/1/16.
//  Copyright © 2016 Shannon Coward. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var newPhotoimgView: UIImageView!
    
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.newPhotoimgView.image = self.image
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
