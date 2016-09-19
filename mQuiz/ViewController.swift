//
//  ViewController.swift
//  mQuiz
//
//  Created by Darshan Hosakote  on 9/14/16.
//  Copyright © 2016 DarshanHosakote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var expressionLabel : UILabel!  //outlet for expression Label
    @IBOutlet var solutionLabel : UILabel!  //outlet for solution label
    @IBOutlet var playButton : UIButton!  //outlet for play button
    @IBOutlet var solveButton : UIButton! //outlet for solve button
    var number1:Int?
    var number2:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()// Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playButtonPressed (sender : UIButton) {
        solutionLabel.text = "?"
        playButton.setTitle("Play again", forState: .Normal)
        number1 = Int(arc4random_uniform(100))
        number2 = Int(arc4random_uniform(100))
        expressionLabel.text = "\(number1!) + \(number2!) = ?"
        
    }
    
    @IBAction func solveButtonPressed (sender : UIButton) {
        if number1 != nil && number2 != nil {
            solutionLabel.text = "\(number1! + number2!)"
        } else {
            solutionLabel.text = "Solution"
        }
    }
}