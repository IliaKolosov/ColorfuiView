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
    @IBOutlet var redLabelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView()
        setupSlider()
    
    }

    @IBAction func ControlRedSidir() {
        redLabelView.text = redSlidir.value.formatted()
        changeView.backgroundColor = changeView.backgroundColor?.withAlphaComponent(CGFloat(redSlidir.value))
    }
    
    @IBAction func ControlGreenSlider() {
    }
    
    @IBAction func ControlBlueSlidir() {
    }
    private func textView(){
        redLabelView.text = redSlidir.value.formatted()
    }
    private func setupSlider(){
        redSlidir.value = 0
        redSlidir.minimumValue = 0
        redSlidir.maximumValue = 1
        redSlidir.minimumTrackTintColor = .red
        redSlidir.maximumTrackTintColor = .yellow
        redSlidir.thumbTintColor = .black
    }
    
}

