//
//  ViewController.swift
//  Gift
//
//  Created by Alexis Rojas-Westall on 12/8/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var heatValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heatValue.text = String(0)
    }

    @IBAction func SliderValueChanged(_ sender: UISlider) {
        let currentValue = sender.value
        if (currentValue == 100) {
            heatValue.text = String(100)
        } else {
            let formattedString = String(format: "%.2f", currentValue)
            heatValue.text = formattedString
        }
        
        
    }
    
}

