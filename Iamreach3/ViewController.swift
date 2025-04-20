//
//  ViewController.swift
//  Iamreach3
//
//  Created by Mohamed Abdelhalem on 13/04/2025.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var result: String = ""
    var resultDouble: Double = 0
    var resultInt: Int = 0
    var op: String = ""
    var temp: Double = 0
    var tempInt: Int = 0
    var isBackspaceEnable: Bool = false
    var isNumbersEnabled: Bool = true
    
    @IBOutlet weak var resulltLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var operationLabel: UILabel!

    @objc func changeColors(_ sender: UIButton, btype: String) {
        // Loop through all subviews and change the color of buttons
        for subview in self.view.subviews {
            if let button = subview as? UIButton, button != sender {
                button.configuration?.baseForegroundColor = .white
            }
        }
        if btype == "operation" {
            sender.configuration?.baseForegroundColor = UIColor.red
        }
    }
    
    @IBAction func plusMinusButton(_ sender: UIButton) {
        result = resulltLabel.text!
        result = result.replacingOccurrences(of: ",", with: "")
        resultDouble = Double(result)!
        if resultDouble < 0{
            //result = String(abs(Double(result)!))
            resultDouble = abs(resultDouble)
        }else{
            //result = String(Double(result)! * -1)
            resultDouble = -resultDouble
        }
        if resultDouble.truncatingRemainder(dividingBy: 1) == 0.0 {
            resultInt = Int(resultDouble)
            result = String(resultInt)
            result = numberFormatComma(result)
            resulltLabel.text = result
        }else{
            result = String((resultDouble * 1000).rounded() / 1000)
            result = numberFormatComma(result)
            resulltLabel.text = result
        }
    }
    @IBAction func backspaceButton(_ sender: UIButton) {
        if isBackspaceEnable == true && resulltLabel.text!.count > 1 {
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                resulltLabel.text = "0"
            }
            else{
                result = String(result.dropLast())
                if result.last == "." {
                    result = String(result.dropLast())
                }
                resulltLabel.text = result
                if result.count == 0 {
                    resulltLabel.text = "0"
                }
            }
            result = result.replacingOccurrences(of: ",", with: "")
            result = numberFormatComma(result)
            resulltLabel.text = result
        }else if isBackspaceEnable == true && resulltLabel.text!.count == 1{
            resulltLabel.text = "0"
        }
    }

    func numberFormatComma (_ fNumber: String) -> String {
        var number: String = String(fNumber.split(separator: ".")[0])
        var rNumber: String = ""
        var isAbs: Bool = false
        if Int(number)! < 0{
            isAbs = true
            number = String(abs(Int(number)!))
        }
        switch number.count {
        case 1...3:
            rNumber = number
        case 4:
            rNumber = number.prefix(1) + "," + number.dropFirst(1).prefix(3)
        case 5:
            rNumber = number.prefix(2) + "," + number.dropFirst(2).prefix(3)
        case 6:
            rNumber = number.prefix(3) + "," + number.dropFirst(3).prefix(3)
        case 7:
            rNumber = number.prefix(1) + "," + number.dropFirst(1).prefix(3) + "," + number.dropFirst(4).prefix(3)
        case 8:
            rNumber = number.prefix(2) + "," + number.dropFirst(2).prefix(3) + "," + number.dropFirst(5).prefix(3)
        case 9:
            rNumber = number.prefix(3) + "," + number.dropFirst(3).prefix(3) + "," + number.dropFirst(6).prefix(3)
        default:
            return ""
        }
        if isAbs == true{
            rNumber = "-" + rNumber
        }
        if fNumber.contains(".") {
            return rNumber + "." + String(fNumber.split(separator: ".")[1])
        }else{
            return rNumber
        }
    }

    @IBAction func numberZeroButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "0"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "0"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberOneButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "1"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "1"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
     }
    @IBAction func numberTwoButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "2"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "2"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberThreeButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "3"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "3"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberFourButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "4"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "4"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberFiveButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "5"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "5"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberSixButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "6"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "6"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberSevenButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "7"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "7"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberEightButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "8"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "8"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func numberNineButton(_ sender: UIButton) {
        if isNumbersEnabled == true && resulltLabel.text!.count < 11{
            changeColors(sender, btype: "num")
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                result = "9"
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            else {
                result = result + "9"
                result = result.replacingOccurrences(of: ",", with: "")
                result = numberFormatComma(result)
                resulltLabel.text = result
            }
            isBackspaceEnable = true
        }
    }
    @IBAction func cButton(_ sender: UIButton) {
        resulltLabel.text = "0"
        operationLabel.text = ""
        tempLabel.text = ""
        temp = 0.0
        tempInt = 0
        result = ""
        resultDouble = 0.0
        resultInt = 0
        isBackspaceEnable = true
        isNumbersEnabled = true
    }
    
    @IBAction func fractionButton(_ sender: UIButton) {
        if isNumbersEnabled == true{
            result = resulltLabel.text!
            if resulltLabel.text == "0" {
                resulltLabel.text = "0."
            }
            else {
                if result.contains("."){
                    resulltLabel.text = result
                }
                else{
                    resulltLabel.text = result + "."
                }
            }
            isBackspaceEnable = true
        }
    }
//operation scrope

    @IBAction func dividedButton(_ sender: UIButton) {
        changeColors(sender, btype: "operation")
        op = "/"
        result = resulltLabel.text!
        result = result.replacingOccurrences(of: ",", with: "")
        if tempLabel.text == ""{
            temp = 0.0
        }
        if (temp == 0.0){
            resultDouble = Double(result)!
            temp = resultDouble
            tempLabel.text = result
        }
        else{
            resultDouble = Double(result)!
            temp = Double(tempLabel.text!)!
            tempLabel.text = String(((temp / resultDouble) * 1000).rounded() / 1000)
            //tempLabel.text = String(temp / resultDouble)
        }
        if Double(tempLabel.text!)!.truncatingRemainder(dividingBy: 1) == 0.0 {
            tempInt = Int(Double(tempLabel.text!)!)
            tempLabel.text = String(tempInt)
        }
        resulltLabel.text = "0"
        isBackspaceEnable = false
        isNumbersEnabled = true
    }
    @IBAction func byButton(_ sender: UIButton) {
        changeColors(sender, btype: "operation")
        op = "*"
        result = resulltLabel.text!
        result = result.replacingOccurrences(of: ",", with: "")
        if tempLabel.text == ""{
            temp = 0.0
        }
        if (temp == 0.0){
            resultDouble = Double(result)!
            temp = resultDouble
            tempLabel.text = result
        }
        else{
            resultDouble = Double(result)!
            temp = Double(tempLabel.text!)!
            tempLabel.text = String(((temp * resultDouble) * 1000).rounded() / 1000)
            //tempLabel.text = String(temp * resultDouble)
        }
        if Double(tempLabel.text!)!.truncatingRemainder(dividingBy: 1) == 0.0 {
            tempInt = Int(Double(tempLabel.text!)!)
            tempLabel.text = String(tempInt)
        }
        resulltLabel.text = "0"
        isBackspaceEnable = false
        isNumbersEnabled = true
    }
    @IBAction func minusButton(_ sender: UIButton) {
        changeColors(sender, btype: "operation")
        op = "-"
        result = resulltLabel.text!
        result = result.replacingOccurrences(of: ",", with: "")
        if tempLabel.text == ""{
            temp = 0.0
        }
        if (temp == 0.0){
            resultDouble = Double(result)!
            temp = resultDouble
            tempLabel.text = result
        }
        else{
            resultDouble = Double(result)!
            temp = Double(tempLabel.text!)!
            tempLabel.text = String(((temp - resultDouble) * 1000).rounded() / 1000)
            //tempLabel.text = String(temp - resultDouble)
        }
        if Double(tempLabel.text!)!.truncatingRemainder(dividingBy: 1) == 0.0 {
            tempInt = Int(Double(tempLabel.text!)!)
            tempLabel.text = String(tempInt)
        }
        resulltLabel.text = "0"
        isBackspaceEnable = false
        isNumbersEnabled = true
    }

    @IBAction func plusButton(_ sender: UIButton) {
        changeColors(sender, btype: "operation")
        op = "+"
        result = resulltLabel.text!
        result = result.replacingOccurrences(of: ",", with: "")
        if tempLabel.text == ""{
            temp = 0.0
        }
        if (temp == 0.0){
            resultDouble = Double(result)!
            temp = resultDouble
            tempLabel.text = result
        }
        else{
            resultDouble = Double(result)!
            temp = Double(tempLabel.text!)!
            tempLabel.text = String(temp + resultDouble)
        }
        if Double(tempLabel.text!)!.truncatingRemainder(dividingBy: 1) == 0.0 {
            tempInt = Int(Double(tempLabel.text!)!)
            tempLabel.text = String(tempInt)
        }
        resulltLabel.text = "0"
        isBackspaceEnable = false
        isNumbersEnabled = true
    }
    
    @IBAction func equalButton(_ sender: UIButton) {
        result = (resulltLabel.text!).replacingOccurrences(of: ",", with: "")
        if result.isEmpty == false{
            resultDouble = Double((resulltLabel.text!).replacingOccurrences(of: ",", with: ""))!
            changeColors(sender,btype: "equal")
            if resulltLabel.text == "0"{
                resulltLabel.text = "0"
            }
            else if (tempLabel.text!).isEmpty{
                switch op {
                case "+":
                    result = String(Double(result)! + temp)
                case "-":
                    result = String(Double(result)! - temp)
                case "*":
                    result = String(Double(result)! * temp)
                case "/":
                    result = String(temp != 0.0 ? Double(result)! / temp: 0.0)
                default:
                    result = "0"
                }
            }else {
                switch op {
                case "+":
                    result = String(temp + resultDouble)
                case "-":
                    result = String(temp - resultDouble)
                case "*":
                    result = String(temp * resultDouble)
                case "/":
                    result = String(resultDouble != 0.0 ? temp / resultDouble : 0.0)
                default:
                    result = "0"
                }
                temp = resultDouble
            }
            if resulltLabel.text == "0" && tempLabel.text != ""{
                resultDouble = Double(tempLabel.text!)!
                if resultDouble.truncatingRemainder(dividingBy: 1) == 0.0 {
                    resultInt = Int(resultDouble)
                    result = String(resultInt)
                    result = numberFormatComma(result)
                    resulltLabel.text = result
                }else{
                    result = String((resultDouble * 1000).rounded() / 1000)
                    result = numberFormatComma(result)
                    resulltLabel.text = result
                }
            }else{
                resultDouble = Double(result)!
                if resultDouble.truncatingRemainder(dividingBy: 1) == 0.0 {
                    resultInt = Int(resultDouble)
                    result = String(resultInt)
                    result = numberFormatComma(result)
                    resulltLabel.text = result
                }else{
                    result = String((resultDouble * 1000).rounded() / 1000)
                    result = numberFormatComma(result)
                    resulltLabel.text = result
                }
            }
            
            tempLabel.text = ""
            isBackspaceEnable = false
            isNumbersEnabled = false
            if resulltLabel.text == "0" && tempLabel.text == ""{
                isNumbersEnabled = true
            }
        }else{
            resulltLabel.text = "0"
        }
    }
}

