//
//  BoggleView.swift
//  Boggle
//
//  Created by Neem Serra on 9/6/16.
//  Copyright © 2016 Neem Serra. All rights reserved.
//

import Foundation
import UIKit

protocol BoggleViewObserver: class {
    func resetButtons()
}

class BoggleView: UIView {
    weak var observer: BoggleViewObserver?
    
    @IBOutlet var buttons: [UIButton]!
    
    func setObserver(observer: BoggleViewObserver) {
        self.observer = observer
    }
    
    @IBAction func resetPressed(sender: AnyObject) {
        self.observer?.resetButtons()
    }
}