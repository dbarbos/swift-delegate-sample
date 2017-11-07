//
//  DetailViewController.swift
//  Swift Delegate Sample
//
//  Created by Diler Barbosa on 06/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    var buttonHitDelegate: ButtonHitDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func left(_ sender: UIButton) {
        buttonHitDelegate?.didHitButton(button: sender)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func right(_ sender: UIButton) {
        buttonHitDelegate?.didHitButton(button: sender)
        self.dismiss(animated: true, completion: nil)
    }
    
}
