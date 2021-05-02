//
//  ViewController.swift
//  changeColor
//
//  Created by Monica Lo on 2021/5/3.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradientView: UIView!
    
    @IBOutlet weak var topRedSlider: UISlider!
    @IBOutlet weak var topGreenSlider: UISlider!
    @IBOutlet weak var topBlueSlider: UISlider!
    @IBOutlet weak var topAlphaSlider: UISlider!
    
    @IBOutlet weak var bottomRedSlider: UISlider!
    @IBOutlet weak var bottomGreenSlider: UISlider!
    @IBOutlet weak var bottomBlueSlider: UISlider!
    @IBOutlet weak var bottomAlphaSlider: UISlider!
    
    @IBOutlet weak var upRedLabel: UILabel!
    @IBOutlet weak var upGreenLabel: UILabel!
    @IBOutlet weak var upBlueLabel: UILabel!
    @IBOutlet weak var upAlphaLabel: UILabel!
    
    @IBOutlet weak var downRedLabel: UILabel!
    @IBOutlet weak var downGreenLabel: UILabel!
    @IBOutlet weak var downBlueLabel: UILabel!
    @IBOutlet weak var downAlphaLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
    }

    @IBAction func changeGradientColor(_ sender: UISlider) {
        upRedLabel.text = String(format: "%.1f", topRedSlider.value)
        upBlueLabel.text = String(format: "%.1f", topBlueSlider.value)
        upGreenLabel.text = String(format: "%.1f", topGreenSlider.value)
        upAlphaLabel.text = String(format: "%.1f", topAlphaSlider.value)
                 
        downRedLabel.text = String(format: "%.1f", bottomRedSlider.value)
        downGreenLabel.text = String(format: "%.1f", bottomGreenSlider.value)
        downBlueLabel.text = String(format: "%.1f", bottomBlueSlider.value)
        downAlphaLabel.text = String(format: "%.1f", bottomAlphaSlider.value)
         
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [CGColor(red: CGFloat(topRedSlider.value), green: CGFloat(topGreenSlider.value), blue: CGFloat(topBlueSlider.value), alpha: CGFloat(topAlphaSlider.value)),CGColor(red: CGFloat(bottomRedSlider.value), green: CGFloat(bottomGreenSlider.value), blue: CGFloat(bottomBlueSlider.value), alpha: CGFloat(bottomAlphaSlider.value))]
        gradientView.layer.addSublayer(gradientLayer)
    }
   
    @IBAction func randomButton(_ sender: UIButton) {
        topRedSlider.value = Float.random(in: 0...1)
        topGreenSlider.value = Float.random(in: 0...1)
        topBlueSlider.value = Float.random(in: 0...1)
        topAlphaSlider.value = Float.random(in: 0...1)
        bottomRedSlider.value = Float.random(in: 0...1)
        bottomGreenSlider.value = Float.random(in: 0...1)
        bottomBlueSlider.value = Float.random(in: 0...1)
        bottomAlphaSlider.value = Float.random(in: 0...1)
        
        upRedLabel.text = String(format: "%.1f", topRedSlider.value)
        upBlueLabel.text = String(format: "%.1f", topBlueSlider.value)
        upGreenLabel.text = String(format: "%.1f", topGreenSlider.value)
        upAlphaLabel.text = String(format: "%.1f", topAlphaSlider.value)
                 
        downRedLabel.text = String(format: "%.1f", bottomRedSlider.value)
        downGreenLabel.text = String(format: "%.1f", bottomGreenSlider.value)
        downBlueLabel.text = String(format: "%.1f", bottomBlueSlider.value)
        downAlphaLabel.text = String(format: "%.1f", bottomAlphaSlider.value)
        
        gradientLayer.frame = gradientView.bounds
        gradientLayer.colors = [CGColor(red: CGFloat(topRedSlider.value), green: CGFloat(topGreenSlider.value), blue: CGFloat(topBlueSlider.value), alpha: CGFloat(topAlphaSlider.value)),CGColor(red: CGFloat(bottomRedSlider.value), green: CGFloat(bottomGreenSlider.value), blue: CGFloat(bottomBlueSlider.value), alpha: CGFloat(bottomAlphaSlider.value))]
        gradientView.layer.addSublayer(gradientLayer)
    }
    
}

