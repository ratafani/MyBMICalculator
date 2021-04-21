//
//  ViewController.swift
//  MyBMICalculator
//
//  Created by Muhammad Tafani Rabbani on 21/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var statusBMI: UILabel!
    @IBOutlet weak var emoji: UILabel!
    
    var status : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBMI(_ sender: Any) {
        updateStatus()
        updateUI()
    }
    
    func updateStatus(){
        
        let height = Double(heightTextField.text!)
        let weight = Double(weightTextField.text!)
        
        let bmi = weight! / (height! * height!)

        if bmi>=0 && bmi<=18.5{
            status = "underWeight"
        }else if bmi>18.5 && bmi<=25{
            status = "healthy"
        }else if bmi>25 && bmi<=30{
            status = "overweight"
        }else if bmi>30 && bmi<=35{
            status = "Severly Overweight"
        }else{
            status = "Morbidly Overweight"
        }
    }
    
    func updateUI(){
        if status == "underweight"{
            statusBMI.text = status
            
        }else if status == "healthy"{
            statusBMI.text = status
            
        }else if status == "overweight"{
            statusBMI.text = status
            
        }else if status == "Severly overweight"{
            statusBMI.text = status
            
        }else if status == "Morbidly OverweIght"{
            statusBMI.text = status
            
        }

    }
    
}

enum BmiEnum : String{
    case underWeight
    case healthy
    case overweight
    case severlyOverweight
    case morbidlyOverweight
}
