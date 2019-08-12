//
//  ViewController.swift
//  Hello World
//
//  Created by Hadley Igoe on 2019-07-22.
//  Copyright © 2019 Hadley Igoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var touchMeButton1: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    let message = Message()
    var puppyCounter = 1
    
    @IBAction func touchMeButton(_ sender: Any) {
         if(puppyCounter <= 10){
            counterLabel.text = String(format: "You have %i puppies!", puppyCounter)
            puppyCounter+=1
        }
         else {
            counterLabel.text = "Woah! You have wayyyyy to many puppies. You need to be stopped!"
            touchMeButton1.isEnabled = false
            touchMeButton1.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        message.showMessage()
    }


}

