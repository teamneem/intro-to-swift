//
//  BoggleViewController.swift
//  Boggle
//
//  Created by Neem Serra on 9/6/16.
//  Copyright © 2016 Neem Serra. All rights reserved.
//

import Foundation
import UIKit

class BoggleViewController: UIViewController, BoggleViewObserver, BoggleModelObserver {
    var boggleModel: BoggleModel?
    var boggleView: BoggleView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.boggleView = self.view as? BoggleView
        boggleView!.setObserver(self)
        
        self.boggleModel = BoggleModel()
        self.boggleModel?.observer = self
        resetButtons()
    }
    
    func resetButtons() {
        let numberOfButtons = self.boggleView?.buttons.count
        
        let titleArray = self.boggleModel?.buttonTextArray(numberOfButtons!)
        
        self.boggleView!.setTitles(titleArray!)
    }
    
    func letterPressed(letter: String) {
        self.boggleModel?.addLetter(letter)
    }
    
    func answersTextChanged(answersText: String) {
        self.boggleView?.answersView.text = answersText
    }
}