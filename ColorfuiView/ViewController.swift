//
//  ViewController.swift
//  ColorfuiView
//
//  Created by ILIA on 28.04.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var changeView: UIView!
    
    @IBOutlet var redSlidir: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlidir: UISlider!
    
    @IBOutlet var redLabelView: UILabel!
    @IBOutlet var greenLabelView: UILabel!
    @IBOutlet var blueLabelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView()
        setupRedSlider()
        
    }
    @IBAction func ControlRedSidir() {
        redLabelView.text = redSlidir.value.formatted()
        changeView.backgroundColor = changeView.backgroundColor?.withAlphaComponent(CGFloat(redSlidir.value))
    }
    
    @IBAction func ControlGreenSlider() {
        greenLabelView.text = greenSlider.value.formatted()
        changeView.backgroundColor = changeView.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
    }
    
    @IBAction func ControlBlueSlidir() {
        blueLabelView.text = blueSlidir.value.formatted()
        changeView.backgroundColor = changeView.backgroundColor?.withAlphaComponent(CGFloat(blueSlidir.value))
    }
    
    private func textView(){
        redLabelView.text = redSlidir.value.formatted()
    }
    private func textGreenView(){
        greenLabelView.text =  greenSlider.value.formatted()
    }
    private func textBlueView(){
        blueLabelView.text = blueSlidir.value.formatted()
    }
    private func setupRedSlider(){
        redSlidir.value = 0
        redSlidir.minimumValue = 0
        redSlidir.maximumValue = 1
        redSlidir.minimumTrackTintColor = .red
        redSlidir.maximumTrackTintColor = .yellow
        redSlidir.thumbTintColor = .black
    }
    private func setupGreenSlider(){
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .blue
        greenSlider.thumbTintColor = .red
    }
    private func setupBlueSlider(){
        blueSlidir.value = 0
        blueSlidir.minimumValue = 0
        blueSlidir.maximumValue = 1
        blueSlidir.minimumTrackTintColor = .blue
        blueSlidir.maximumTrackTintColor = .white
        blueSlidir.thumbTintColor = .green
    }
}


