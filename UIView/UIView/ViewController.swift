//
//  ViewController.swift
//  UIView
//
//  Created by user on 10/21/23.
//

 // Do any additional setup after loading the view.
  

import UIKit

class ViewController: UIViewController {

        
        @IBOutlet weak var usgusj: UILabel!
        @IBOutlet var usgorusj : [UISwitch]!
        @IBOutlet var number1: [UITextField]!
        @IBOutlet var number2: UITextField!
        @IBOutlet var calculateButton: UIButton!
        @IBOutlet var answer: [UILabel]!

    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            
            if let number1Value = Int(number1[0].text ?? ""), let number2Value = Int(number1[1].text ?? "") {
                let gcd = calculateGCD(number1Value, number2Value)
                answer[0].text = "უსგ: \(gcd)"
            }
        } else {
            
            if let number1Value = Int(number1[0].text ?? ""), let number2Value = Int(number1[1].text ?? "") {
                let lcm = calculateLCM(number1Value, number2Value)
                answer[0].text = "უსჯ: \(lcm)"
            }
        }
    }

    
    func calculateGCD(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        }
        return calculateGCD(b, a % b)
    }

    
    func calculateLCM(_ a: Int, _ b: Int) -> Int {
        return abs(a * b) / calculateGCD(a, b)
    }

//კოდი დავწერე iPhone 15 Pro, iOS 17-ისთვის
}




