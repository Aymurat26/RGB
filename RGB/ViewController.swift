//
//  ViewController.swift
//  RGB
//
//  Created by Aymurat on 06.02.2023.
//

import UIKit

class ViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var resultColorView: UIView!
    
    @IBOutlet var redSliderValueLabel: UILabel!
    @IBOutlet var greenSliderValueLabel: UILabel!
    @IBOutlet var blueSliderValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultColorView.layer.cornerRadius = 25
        
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        setColor()
        
        setValue(for: redSliderValueLabel, greenSliderValueLabel, blueSliderValueLabel)
       
      
    }
     // MARK: IBActions
    @IBAction func redSliderAction() {
        redSliderValueLabel.text = toString(from: redSlider)
        setColor()
    }
    @IBAction func greenSliderAction() {
        greenSliderValueLabel.text = toString(from: greenSlider)
        setColor()
    }
    
    @IBAction func blueSliderAction() {
        blueSliderValueLabel.text = toString(from: blueSlider)
        setColor()
    }
     // MARK: privat funcs
    private func setColor() {
        resultColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in switch label{
        case redSliderValueLabel:
            redSliderValueLabel.text = toString(from: redSlider)
        case greenSliderValueLabel:
            greenSliderValueLabel.text = toString(from: greenSlider)
        default:
            blueSliderValueLabel.text = toString(from: blueSlider)
        
       
            
           }
        }
    }
    
    private func toString(from slider: UISlider) -> String{
        String(format: "%.2f", slider.value)
    }
}
