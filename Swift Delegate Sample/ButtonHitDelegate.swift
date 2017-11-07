//
//  DismissButtonDelegate.swift
//  Swift Delegate Sample
//
//  Created by Diler Barbosa on 06/11/17.
//  Copyright © 2017 Diler Barbosa. All rights reserved.
//

import Foundation
import UIKit

// Create an Interface/Protocol that propose the implementation of a method to be delegated form an Object A to an Object B

protocol ButtonHitDelegate {
    func didHitButton(button: UIButton)
}
