//
//  ViewController.swift
//  HW2.2
//
//  Created by Денис Шпагин on 16.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewOutlet: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutlet.layer.cornerRadius = viewOutlet.frame.height / 10
    }
    
    private func changeColor() {
        viewOutlet.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    
    @IBAction func redLadelAction() {
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
        changeColor()
    }
}


