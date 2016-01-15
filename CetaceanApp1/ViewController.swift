//
//  ViewController.swift
//  CetaceanApp1
//
//  Created by Sahana Rangarajan on 2/12/15.
//  Copyright (c) 2015 Sahana Rangarajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var isDarkSwitch : UISwitch!
    @IBOutlet var hasFinSwitch : UISwitch!
    @IBOutlet var spoutSwitch : UISwitch!
    @IBOutlet var sizeSwitch : UISwitch!
    @IBOutlet var resultTextView : UITextView!
    @IBOutlet var resultImage : UIImage!

    
    func refreshUI() {
        resultTextView.text = ""
    }
    
    @IBAction func findMatchTapped(sender: AnyObject) {
        var result = "Result: "
        let inputCet = Cetacean(isDark : isDarkSwitch.on, hasFin : hasFinSwitch.on, doubleSpout: spoutSwitch.on,
                    smallerThan3m: sizeSwitch.on)
        
        let cetArray = CetArray()
        
        if(cetArray.findMatch(inputCet)) {
           result += inputCet.getName()
        }
        else {
            result = "Match not found"
        }
        resultTextView.text = result
    }
     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refreshUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

