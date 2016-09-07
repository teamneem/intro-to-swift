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
    var boggleModel: BoggleModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let boggleView = self.view as! BoggleView
        boggleView.setObserver(self)
        
        self.boggleModel = BoggleModel()
    }
    
    func resetButtons() {
        print("Reset!")
    }
}