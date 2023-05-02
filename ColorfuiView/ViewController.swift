//
//  ViewController.swift
//  ColorfuiView
//
//  Created by ILIA on 28.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var changeView: UIView!
    
    @IBOutlet var redSlidir: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlidir: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlidir.minimumValue = 0
        redSlidir.maximumValue = 100
       
    }

    @IBAction func ControlRedSidir() {
       
    }
    
    @IBAction func ControlGreenSlider() {
    }
    
    @IBAction func ControlBlueSlidir() {
    }
   
}

