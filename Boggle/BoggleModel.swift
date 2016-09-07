//
//  BoggleModel.swift
//  Boggle
//
//  Created by Neem Serra on 9/6/16.
//  Copyright © 2016 Neem Serra. All rights reserved.
//

import Foundation

class BoggleModel {
    var answersText: String = ""
    
    func buttonTextArray(numberOfButtons: Int) -> Array<String> {
        var array = [String]()
        for i in 0..<numberOfButtons {
            array.append(randomLetter())
        }
        return array
    }
    
    func randomLetter() -> String {
        let letters : String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let rand = Int(arc4random_uniform(26))
        let stringArray = Array(letters.characters)
        return String(stringArray[rand])
    }
    
    func addLetter(letter: String) {
        self.answersText += letter
    }
}