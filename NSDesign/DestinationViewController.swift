//
//  DestinationViewController.swift
//  NSDesign
//
//  Created by Buka Cakrawala on 2/9/17.
//  Copyright © 2017 Buka Cakrawala. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {
    
    @IBOutlet weak var dismissButton: UIButton!
    @IBAction func dismissAction(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dismissButton.layer.cornerRadius = dismissButton.frame.size.width / 2
        
    }
    
}
