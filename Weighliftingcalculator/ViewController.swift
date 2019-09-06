//
//  ViewController.swift
//  Weighliftingcalculator
//
//  Created by Maria Diaz on 5/8/19.
//  Copyright © 2019 AppDev_MD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var p45: UILabel!
    @IBOutlet var p25: UILabel!
    @IBOutlet var p10: UILabel!
    @IBOutlet var p5: UILabel!
    @IBOutlet var p2: UILabel!
    
    @IBOutlet var weight: UITextField!
    
    @IBOutlet var output: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func action(_ sender: Any) {
        if let text = weight.text, var w = Int(text){
            
            output.text = "Your weights are:"
         w -= 45
        let w45 = w/85
        w -= 85*w45
        let w25 = w/50
        w -= 50*w25
        let w10 = w/20
        w -= w10*20
        let w5 = w/10
        w -= w5*10
        let w2 = w/5
        w -= w2*5
 

        p45.text = String(w45)
            p25.text = String(w25)
            p10.text = String(w10)
            p5.text = String(w5)
            p2.text = String(w2)
        }
        else{
             output.text = "Please enter a valid weight..."
            
        }
        
    }
    

    
}

