//
//  BoggleViewController.swift
//  Boggle
//
//  Created by Neem Serra on 9/6/16.
//  Copyright © 2016 Neem Serra. All rights reserved.
//

import Foundation
import UIKit

class BoggleViewController: UIViewController, BoggleViewObserver {
    override func viewDidLoad() {
        super.viewDidLoad()
        let boggleView = self.view as! BoggleView
        boggleView.setObserver(self)
    }
    
    func resetButtons() {
        print("Reset!")
    }
}