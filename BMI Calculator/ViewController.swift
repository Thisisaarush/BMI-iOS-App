//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Aarush Tanwar on 04/02/22.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSliderUI: UISlider!
    @IBOutlet weak var weightSliderUI: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let currentHeight = String(format: "%.2f",sender.value);
        height.text = currentHeight + " cm";
    }

    @IBAction func weightSlider(_ sender: UISlider) {
        let currentWeight = Int(sender.value);
        weight.text = "\(currentWeight) kg";
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        let currentHeight = heightSliderUI.value;
        let currentWeight = weightSliderUI.value;
        
        let bmi = currentWeight / pow(currentHeight, 2);
        print(bmi);
        
        let secondVC = SecondViewController();
        secondVC.bmiValue = String(bmi);
        self.present(secondVC, animated: true, completion: nil);
    }
}

