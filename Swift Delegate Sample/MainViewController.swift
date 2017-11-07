//
//  ViewController.swift
//  Swift Delegate Sample
//
//  Created by Diler Barbosa on 06/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loadAnotherView(_ sender: Any) {
        let nextViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        nextViewController.buttonHitDelegate = self
        
        present(nextViewController, animated: true, completion: nil)
    }
    
}

extension MainViewController : ButtonHitDelegate {
    func didHitButton(button: UIButton) {
        label.text = button.titleLabel?.text
    }
}

