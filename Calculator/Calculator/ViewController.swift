//
//  ViewController.swift
//  Calculator
//
//  Created by Şevval Kalkavan on 21.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var styleButton: [UIButton]!
    
    @IBOutlet weak var labelResult: UILabel!
    
    var result: String = "0"
    
    var varoperator : String?
    
    var number1: Double?
    var number2: Double?
    var numberResult: Double?
    
    @IBOutlet weak var buttonNo1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in styleButton{
            button.layer.cornerRadius = 40
        }
        
        labelResult.text = result
        
    }
    
    @IBAction func buttonNo1(_ sender: UIButton) {
        labelResult.text = ""
        labelResult.text = labelResult.text! + (sender.titleLabel?.text ?? "")
    }
    
    
    @IBAction func deleteButton(_ sender: UIButton) {
        labelResult.text = "0"
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        varoperator = "+"
        number1 = Double(labelResult.text!)
    }
    @IBAction func minusButton(_ sender: UIButton) {
        varoperator = "-"
        number1 = Double(labelResult.text!)
    }
    @IBAction func multiplyButton(_ sender: UIButton) {
        varoperator = "*"
        number1 = Double(labelResult.text!)
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        varoperator = "/"
        number1 = Double(labelResult.text!)
    }
    
    
    @IBAction func equalButton(_ sender: UIButton) {
        
        number2 = Double(labelResult.text!)
        
        switch varoperator {
        case "+":
            numberResult = number1! + number2!
        case "-":
            numberResult = number1! - number2!
        case "*":
            numberResult = number1! * number2!
        case "/":
            numberResult = number1! / number2!
        default:
            break

        }
        
        labelResult.text = "\(numberResult!)"
        
    }
    

}

